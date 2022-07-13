#![no_std]
elrond_wasm::imports!();
elrond_wasm::derive_imports!();

const YEAR_IN_SECONDS: u64 = 60 * 60 * 24 * 365;
const PERCENTAGE: u32 = 100;
const NFT: u32 = 1;

#[elrond_wasm::contract]

pub trait Staking{
    #[init]
    fn init(
        &self,
        staking_token: &EgldOrEsdtTokenIdentifier,
        staking_amount: &BigUint,
        token_id: &TokenIdentifier,
        apr_normal: &u32,
        nft_boost_multiplier: &u32,
        lock_assets_time_in_seconds: &u64
        
    ) {
        
        require!(staking_amount > &0 ,"Staking amount cannot be 0");
        require!(apr_normal > &0 ,"APR cannot be 0");
        require!(nft_boost_multiplier > &0 ,"Multiplier cannot be 0");

        self.staking_token().set(staking_token);
        self.required_stake_amount().set(staking_amount);
        self.nft_token().set(token_id);
        self.apr_normal().set(apr_normal);
        self.nft_boost_multiplier().set(nft_boost_multiplier);
        self.lock_assets_time_in_seconds().set(lock_assets_time_in_seconds);
    }
    #[payable("*")]
    #[only_owner]
    #[endpoint(supply)]
    fn supply(&self){
        let staking_token = self.staking_token().get();
        let (payment_token, payment_amount) = self.call_value().egld_or_single_fungible_esdt();
        require!(payment_token == staking_token, "Invalid token input");
        self.reward_supply().update(|supplied| *supplied += &payment_amount);

    }

    #[only_owner]
    #[endpoint(withdrawsupply)]
    fn withdrawsupply(&self,withdraw_amount: BigUint){
        let caller = self.blockchain().get_caller();
        let staking_token = self.staking_token().get();
        
        require!(self.reward_supply().get() < withdraw_amount, "You cant withdraw more than you supplied");
        self.reward_supply()
        .update(|supplied| *supplied -= &withdraw_amount);
        self.send().direct(&caller, &staking_token, 0, &unstake_amount);
    }

    #[payable("*")]
    #[endpoint(stake)]
    fn stake(&self) {
        self.claim_rewards_to_storage();
        let caller = self.blockchain().get_caller();
        let staking_token = self.staking_token().get();
        let (payment_token, payment_amount) = self.call_value().egld_or_single_fungible_esdt();

        require!(payment_token == staking_token, "Invalid token input");
        require!(&payment_amount >= &self.required_stake_amount().get() ,"Staking amount is too low");

        let future_lock_time = self.lock_assets_time_in_seconds().get() + self.blockchain().get_block_timestamp();
        self.lock_time(&caller).set(&future_lock_time);

        self.staked_all().update(|staked| *staked += &payment_amount);

        self.staked_amount(&caller).update(|staked| *staked += &payment_amount);
    }

    #[payable("*")]
    #[endpoint(stakeboost)]
    fn stakeboost(&self){
        self.claim_rewards_to_storage();
        let caller = self.blockchain().get_caller();
        let payment = self.call_value().single_esdt();
        
        require!(payment.token_identifier == self.nft_token().get(), "Not whitelisted collection");

        self.staked_nft(&caller).insert(payment.token_nonce);
    }

    #[endpoint(unstakeboost)]
    fn unstakeboost(&self, token_id: TokenIdentifier,nonce: u64) {
        self.claim_rewards_to_storage();
        let caller = self.blockchain().get_caller();

        require!(self.staked_nft(&caller).contains(&nonce) == true, "You didnt staked this NFT");

       self.staked_nft(&caller).swap_remove(&nonce);
        self.send().direct_esdt(&caller,&token_id ,nonce, &BigUint::from(NFT));
    }

    #[endpoint(unstake)]
    fn unstake(&self, unstake_amount: BigUint) {
        let caller = self.blockchain().get_caller();
        let current_timestamp = self.blockchain().get_block_timestamp();

        require!(self.lock_time(&caller).get() < current_timestamp , "Lock time did not passed");

        self.claim_rewards_to_storage();
      
       

        

        let staked_amount_mapper = self.staked_amount(&caller);
        let staked_amount = staked_amount_mapper.get();
    
        require!(unstake_amount <= staked_amount, "Unstake amount is greater than your staked amount");

        let leftover_amount = &staked_amount - &unstake_amount;
        self.staked_all().update(|staked| *staked -= &unstake_amount);

        staked_amount_mapper.set(&leftover_amount);
        let staking_token = self.staking_token().get();
        self.send().direct(&caller, &staking_token, 0, &unstake_amount);
    }

    #[endpoint(claim)]
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

    #[storage_mapper("stakingToken")]
    fn staking_token(&self) -> SingleValueMapper<EgldOrEsdtTokenIdentifier>;

    #[storage_mapper("requiredStakeAmount")]
    fn required_stake_amount(&self) -> SingleValueMapper<BigUint>;

    #[storage_mapper("stakingNft")]
    fn nft_token(&self) -> SingleValueMapper<TokenIdentifier>;

    #[view(getAprNormal)]
    #[storage_mapper("aprNormal")]
    fn apr_normal(&self) -> SingleValueMapper<u32>;

    #[storage_mapper("nftBoostMultiplier")]
    fn nft_boost_multiplier(&self) -> SingleValueMapper<u32>;

    #[storage_mapper("lockAssetsTimeInSeconds")]
    fn lock_assets_time_in_seconds(&self) -> SingleValueMapper<u64>;

    #[view(getLockTime)]
    #[storage_mapper("lockTime")]
    fn lock_time(&self, user: &ManagedAddress) -> SingleValueMapper<u64>;

    #[storage_mapper("storedTimestamps")]
    fn stored_timestamps(&self,user: &ManagedAddress) -> SingleValueMapper<u64>;

    #[view(getNftStaked)]
    #[storage_mapper("stakedNft")]
    fn staked_nft(&self,user: &ManagedAddress) -> UnorderedSetMapper<u64>;

    #[view(getStakedAmount)]
    #[storage_mapper("stakedAmount")]
    fn staked_amount(&self, user: &ManagedAddress) -> SingleValueMapper<BigUint>;

    #[view(calculatedRewards)]
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
        let real_apr =apr_boost_u32 * self.nft_boost_multiplier().get() + self.apr_normal().get();
        
        let rewards: BigUint = ((BigUint::from(difference_timestamp) * BigUint::from(real_apr) *staked_amount)/BigUint::from(YEAR_IN_SECONDS))/BigUint::from(PERCENTAGE);
        
        
        
        return rewards;
    }

    fn claim_rewards_to_storage(&self){
        let current_timestamp = self.blockchain().get_block_timestamp();
        let caller = self.blockchain().get_caller();
        let rewards = self.calculated_rewards();
        self.storage_rewards(&caller).update(|reward| *reward +=rewards);
        self.stored_timestamps(&self.blockchain().get_caller()).set(current_timestamp);
    }

    #[view(getStorageRewards)]
    #[storage_mapper("storageRewards")]
    fn storage_rewards(&self, user: &ManagedAddress) -> SingleValueMapper<BigUint>; 
    
    #[view(getstakedAll)]
    #[storage_mapper("stakedAll")]
    fn staked_all(&self) -> SingleValueMapper<BigUint>;

    #[view(getRewardSupply)]
    #[storage_mapper("rewardSupply")]
    fn reward_supply(&self) -> SingleValueMapper<BigUint>;
}
