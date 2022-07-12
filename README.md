# Staking ESDT and NFT
This Smartcontract is able to stake ESDT to get same ESDT back as reward. There is involved NFT staking to boost APR for ESDT rewards.

To interact with the Smart Contract, you would need to have:
- python3.8 and upper
- [Pem wallet](https://github.com/ReneDuris/GeneratePem-erdjs) - Generating pem file through erdjs.
- [Elrond IDE](https://marketplace.visualstudio.com/items?itemName=Elrond.vscode-elrond-ide/) - extension for Visual Studio Code
```
ctrl+shift+P
Elrond: Setup Workspace
```
# Interaction
To interact with the Smart Contract, you would need to supply your wallet with some funds:
- [ESDT/EGLD faucet](https://r3d4.fr/elrond/devnet/)
- [NFT faucet](https://dapp-demo.elven.tools/)


        
# Contract build
example:
```
erdpy --verbose contract build "/home/project/staking"
```
# Deploying smartcontract through erdpy.json
There is stored whole configuration to get smartcontract deployed by using command. You will need to do this only once.
```
erdpy contract deploy
```
# Upgrading smartcontract
example:
```
erdpy --verbose contract upgrade erd1qqqqqqqqqqqqqpgq6lsfc55vs5yk56mrnd5s95jgm9lrevvs0ztsrkernq --recall-nonce --pem="wallet.pem" --gas-limit=60000000 --proxy="https://devnet-gateway.elrond.com" --chain=D --project=staking --arguments str:EFOO-8e80a5 100000000000000000 str:HAHAHA-5c4481 25 259200 --send || return
```
# Arguments upon deployement
Upon deployement or while ugrading you have to set your arguments.
- ESDT token to be staked and supplied for rewards
```
"str:TokenIdentifier"
```
- Minimum staking amount for the users (BigUint)
```
"1000000000000000000"
```
- NFT collection to be whitelisted for boosting APR
```
"str:NFTTokenIdentifier"
```
- APR
```
"25"
```
- Lock time for ESDT unstake in seconds
```
"259200"
```
```
 #[init]
    fn init(
        &self,
        staking_token: &EgldOrEsdtTokenIdentifier,
        staking_amount: &BigUint,
        token_id: &TokenIdentifier,
        apr_normal: &u32,
        lock_assets_time_in_seconds: &u64
    ) {
        
        require!(staking_amount > &0 ,"Staking amount cannot be 0");
        require!(apr_normal > &0 ,"APR cannot be 0");

        self.staking_token().set(staking_token);
        self.required_stake_amount().set(staking_amount);
        self.nft_token().set(token_id);
        self.apr_normal().set(apr_normal);
        self.lock_assets_time_in_seconds().set(lock_assets_time_in_seconds);
    }
```        
# Query SmartContract
Using view methods you are able to query your smartcontract to view informations.
- [query SmartContract-erdjs](https://github.com/ReneDuris/Query-SmartContract-erdjs)
       
 # View methods, storage mappers
- [View annotations](https://docs.elrond.com/developers/developer-reference/elrond-wasm-annotations/#endpoint-and-view)

Storage mappers can be used to store single values or multiple values. And with view method you are able to query stored value.
- [singleValueMapper](https://docs.elrond.com/developers/developer-reference/storage-mappers/#get)
```
    #[view(getStakedAmount)]
    #[storage_mapper("stakedAmount")]
    fn staked_amount(&self, user: &ManagedAddress) -> SingleValueMapper<BigUint>;
```
- [UnorderedSetMapper](https://docs.elrond.com/developers/developer-reference/storage-mappers/#unorderedsetmapper)
```
    #[view(getNftStaked)]
    #[storage_mapper("stakedNft")]
    fn staked_nft(&self,user: &ManagedAddress) -> UnorderedSetMapper<u64>;

```      
# Endpoints
- [Endpoint annotations](https://docs.elrond.com/developers/developer-reference/elrond-wasm-annotations/#endpoint-and-view)
- #[payable("*")] - throught the endpoint can be sent tokens, nfts
- #[only_owner] - only owner can call the endpoint
- #[endpoint] - annotation of endpoint which can be called
```
    #[payable("*")]
    #[only_owner]
    #[endpoint]
    fn supply(&self){
        let staking_token = self.staking_token().get();
        let (payment_token, payment_amount) = self.call_value().egld_or_single_fungible_esdt();
        require!(payment_token == staking_token, "Invalid token input");
        self.reward_supply().update(|staked| *staked += &payment_amount);

    }
```
```
    #[endpoint]
    fn claim(&self){
        let caller = self.blockchain().get_caller();
        let staking_token = self.staking_token().get();
        let current_timestamp = self.blockchain().get_block_timestamp();
        let rewards = self.storage_rewards(&caller).get()+self.calculated_rewards();

        if rewards == BigUint::zero(){return};

        require!(&self.blockchain().get_sc_balance(&staking_token,0) - &rewards >= self.staked_all().get() , "Claim disabled, low amount of provided tokens");

        self.storage_rewards(&caller).set(BigUint::zero());
        self.stored_timestamps(&self.blockchain().get_caller()).set(current_timestamp);
        self.send().direct(&caller, &staking_token, 0, &rewards);
    }
```
# SmartContract API functions
[SmartContract API functions](https://docs.elrond.com/developers/developer-reference/elrond-wasm-api-functions/#docsNav)
```
let caller = self.blockchain().get_caller();
let current_timestamp = self.blockchain().get_block_timestamp();
let balance_smartcontract = &self.blockchain().get_sc_balance(&staking_token,0)

```
# Calculation of rewards

```
#[view(getCalculatedRewards)]
    fn calculated_rewards(&self) -> BigUint{
        let caller = self.blockchain().get_caller();
        if self.stored_timestamps(&self.blockchain().get_caller()).is_empty(){ 
            return BigUint::zero();
         }
         
         
        let stake_timestamp = &self.stored_timestamps(&self.blockchain().get_caller()).get();
        let current_timestamp = self.blockchain().get_block_timestamp();
        let difference_timestamp = current_timestamp - stake_timestamp;
        let staked_amount_mapper = self.staked_amount(&caller);
        let staked_amount = staked_amount_mapper.get();
        let apr_boost = self.staked_nft(&caller).len();
        let apr_boost_u32 = apr_boost as u32;
        let real_apr = self.apr_normal().get() + apr_boost_u32;
        
        let rewards: BigUint = ((BigUint::from(difference_timestamp) * BigUint::from(real_apr) *staked_amount)/BigUint::from(YEAR_IN_SECONDS))/BigUint::from(PERCENTAGE);
        
        
        
        return rewards;
    }
```

