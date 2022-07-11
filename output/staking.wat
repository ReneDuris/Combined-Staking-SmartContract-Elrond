(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i64)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (result i64)))
  (type (;11;) (func))
  (type (;12;) (func (param i32 i32 i32 i64 i32)))
  (type (;13;) (func (param i64)))
  (type (;14;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i64) (result i32)))
  (type (;17;) (func (param i32 i32 i64 i32)))
  (type (;18;) (func (param i32 i32 i64 i32 i32 i32)))
  (type (;19;) (func (param i32 i32) (result i64)))
  (type (;20;) (func (param i32 i32 i32 i32)))
  (type (;21;) (func (param i32 i64) (result i32)))
  (type (;22;) (func (param i32 i64 i32)))
  (import "env" "signalError" (func (;0;) (type 0)))
  (import "env" "bigIntSetInt64" (func (;1;) (type 1)))
  (import "env" "mBufferNew" (func (;2;) (type 2)))
  (import "env" "mBufferAppend" (func (;3;) (type 3)))
  (import "env" "mBufferEq" (func (;4;) (type 3)))
  (import "env" "managedTransferValueExecute" (func (;5;) (type 4)))
  (import "env" "managedCaller" (func (;6;) (type 5)))
  (import "env" "managedSCAddress" (func (;7;) (type 5)))
  (import "env" "managedOwnerAddress" (func (;8;) (type 5)))
  (import "env" "managedGetMultiESDTCallValue" (func (;9;) (type 5)))
  (import "env" "bigIntGetCallValue" (func (;10;) (type 5)))
  (import "env" "mBufferGetArgument" (func (;11;) (type 3)))
  (import "env" "mBufferAppendBytes" (func (;12;) (type 6)))
  (import "env" "managedSignalError" (func (;13;) (type 5)))
  (import "env" "smallIntGetUnsignedArgument" (func (;14;) (type 7)))
  (import "env" "mBufferGetLength" (func (;15;) (type 8)))
  (import "env" "bigIntGetUnsignedArgument" (func (;16;) (type 0)))
  (import "env" "getNumArguments" (func (;17;) (type 2)))
  (import "env" "bigIntFinishUnsigned" (func (;18;) (type 5)))
  (import "env" "mBufferSetBytes" (func (;19;) (type 6)))
  (import "env" "bigIntTDiv" (func (;20;) (type 9)))
  (import "env" "bigIntMul" (func (;21;) (type 9)))
  (import "env" "bigIntAdd" (func (;22;) (type 9)))
  (import "env" "mBufferStorageLoad" (func (;23;) (type 3)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;24;) (type 3)))
  (import "env" "mBufferStorageStore" (func (;25;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func (;26;) (type 3)))
  (import "env" "bigIntCmp" (func (;27;) (type 3)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func (;28;) (type 4)))
  (import "env" "getBlockTimestamp" (func (;29;) (type 10)))
  (import "env" "checkNoPayment" (func (;30;) (type 11)))
  (import "env" "bigIntSign" (func (;31;) (type 8)))
  (import "env" "bigIntGetExternalBalance" (func (;32;) (type 0)))
  (import "env" "mBufferGetBytes" (func (;33;) (type 3)))
  (import "env" "bigIntGetESDTExternalBalance" (func (;34;) (type 12)))
  (import "env" "smallIntFinishUnsigned" (func (;35;) (type 13)))
  (import "env" "bigIntSub" (func (;36;) (type 9)))
  (import "env" "mBufferGetByteSlice" (func (;37;) (type 14)))
  (func (;38;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 0
    unreachable)
  (func (;39;) (type 15) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        call 40
        unreachable
      end
      local.get 1
      local.get 2
      call 41
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store)
  (func (;40;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 149
    unreachable)
  (func (;41;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 152
    unreachable)
  (func (;42;) (type 8) (param i32) (result i32)
    (local i32)
    call 43
    local.tee 1
    local.get 0
    i64.extend_i32_u
    call 1
    local.get 1)
  (func (;43;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=1049368
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=1049368
    local.get 0)
  (func (;44;) (type 16) (param i64) (result i32)
    (local i32)
    call 43
    local.tee 1
    local.get 0
    call 1
    local.get 1)
  (func (;45;) (type 8) (param i32) (result i32)
    (local i32)
    call 2
    local.tee 1
    local.get 0
    call 3
    drop
    local.get 1)
  (func (;46;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 4
    i32.const 0
    i32.gt_s)
  (func (;47;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 38
    unreachable)
  (func (;48;) (type 17) (param i32 i32 i64 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 4
        call 49
        i32.store offset=8
        local.get 4
        call 49
        i32.store offset=12
        local.get 0
        local.get 1
        i64.const 0
        local.get 3
        local.get 4
        i32.const 8
        i32.add
        local.get 4
        i32.const 12
        i32.add
        call 50
        br 1 (;@1;)
      end
      local.get 4
      call 49
      i32.store offset=8
      local.get 4
      call 49
      i32.store offset=12
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      i32.const 8
      i32.add
      local.get 4
      i32.const 12
      i32.add
      call 50
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 2) (result i32)
    (local i32)
    call 43
    local.tee 0
    i32.const 1049276
    i32.const 0
    call 19
    drop
    local.get 0)
  (func (;50;) (type 18) (param i32 i32 i64 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 6
    global.set 0
    call 49
    local.set 7
    local.get 1
    call 45
    local.set 8
    call 43
    local.tee 1
    i64.const 0
    call 1
    local.get 1
    local.get 1
    local.get 3
    call 22
    local.get 6
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 6
    i64.const 0
    i64.store offset=24
    local.get 6
    local.get 8
    i32.const 24
    i32.shl
    local.get 8
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 8
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 8
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=40
    local.get 6
    i32.const 16
    i32.add
    local.get 6
    i32.const 24
    i32.add
    i32.const 0
    i32.const 4
    call 110
    local.get 6
    i32.load offset=16
    local.get 6
    i32.load offset=20
    local.get 6
    i32.const 40
    i32.add
    i32.const 4
    call 86
    local.get 6
    local.get 2
    i64.const 56
    i64.shl
    local.get 2
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 2
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 2
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 2
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 2
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 2
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 2
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=40
    local.get 6
    i32.const 8
    i32.add
    local.get 6
    i32.const 24
    i32.add
    i32.const 4
    i32.const 12
    call 110
    local.get 6
    i32.load offset=8
    local.get 6
    i32.load offset=12
    local.get 6
    i32.const 40
    i32.add
    i32.const 8
    call 86
    local.get 6
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=40
    local.get 6
    local.get 6
    i32.const 24
    i32.add
    i32.const 12
    i32.const 16
    call 110
    local.get 6
    i32.load
    local.get 6
    i32.load offset=4
    local.get 6
    i32.const 40
    i32.add
    i32.const 4
    call 86
    local.get 7
    local.get 6
    i32.const 24
    i32.add
    i32.const 16
    call 12
    drop
    local.get 0
    i32.load
    local.get 7
    i64.const 0
    local.get 4
    i32.load
    local.get 5
    i32.load
    call 28
    drop
    local.get 6
    i32.const 48
    i32.add
    global.set 0)
  (func (;51;) (type 9) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i64.const 0
      local.get 2
      call 48
      return
    end
    call 49
    local.set 1
    call 49
    local.set 3
    local.get 0
    i32.load
    local.get 2
    i64.const 0
    local.get 1
    local.get 3
    call 5
    drop)
  (func (;52;) (type 2) (result i32)
    (local i32)
    call 43
    local.tee 0
    call 6
    local.get 0)
  (func (;53;) (type 2) (result i32)
    (local i32)
    call 43
    local.tee 0
    call 7
    local.get 0)
  (func (;54;) (type 11)
    (local i32)
    call 43
    local.tee 0
    call 8
    block  ;; label = @1
      local.get 0
      call 52
      call 46
      i32.eqz
      br_if 0 (;@1;)
      return
    end
    i32.const 1048576
    i32.const 36
    call 0
    unreachable)
  (func (;55;) (type 2) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1049376
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const -21
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 0
    i32.const 1
    i32.store8 offset=1049376
    i32.const -21
    call 9
    i32.const -21)
  (func (;56;) (type 5) (param i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call 55
            local.tee 2
            call 57
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          i32.const 1048612
          i32.const 34
          call 0
          unreachable
        end
        i32.const -11
        local.set 2
        i32.const 2147483646
        local.set 3
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1049372
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          i32.const -11
          i32.const 2147483647
          local.get 4
          select
          local.set 2
          br 2 (;@1;)
        end
        i32.const 0
        i32.const 1
        i32.store8 offset=1049372
        i32.const -11
        call 10
        br 1 (;@1;)
      end
      local.get 1
      i32.const 16
      i32.add
      i64.const 0
      i64.store
      local.get 1
      i64.const 0
      i64.store offset=8
      local.get 2
      i32.const 0
      local.get 1
      i32.const 8
      i32.add
      i32.const 16
      call 58
      local.set 4
      local.get 1
      i32.const 0
      i32.store offset=28
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 28
      i32.add
      call 59
      local.set 3
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 28
      i32.add
      call 60
      local.set 5
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 28
      i32.add
      call 61
      local.set 2
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        local.get 5
        i64.const 0
        i64.eq
        br_if 1 (;@1;)
        i32.const 1049276
        i32.const 28
        call 0
        unreachable
      end
      i32.const 1048711
      i32.const 29
      call 0
      unreachable
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;57;) (type 8) (param i32) (result i32)
    local.get 0
    call 77
    i32.const 4
    i32.shr_u)
  (func (;58;) (type 14) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 37
    i32.const 0
    i32.ne)
  (func (;59;) (type 3) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    call 85
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 86
    local.get 1
    local.get 3
    i32.store
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or)
  (func (;60;) (type 19) (param i32 i32) (result i64)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 8
    i32.add
    local.tee 3
    call 85
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 86
    local.get 1
    local.get 3
    i32.store
    local.get 2
    i64.load offset=8
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 4
    i64.const 56
    i64.shl
    local.get 4
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 4
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 4
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 4
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 4
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 4
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 4
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or)
  (func (;61;) (type 3) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    call 85
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 86
    local.get 1
    local.get 3
    i32.store
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or)
  (func (;62;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call 43
    local.tee 1
    call 11
    drop
    local.get 1)
  (func (;63;) (type 20) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048646
    i32.const 23
    call 64
    local.tee 4
    local.get 0
    local.get 1
    call 12
    drop
    local.get 4
    i32.const 1048669
    i32.const 3
    call 12
    drop
    local.get 4
    local.get 2
    local.get 3
    call 12
    drop
    local.get 4
    call 13
    unreachable)
  (func (;64;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call 43
    local.tee 2
    local.get 0
    local.get 1
    call 19
    drop
    local.get 2)
  (func (;65;) (type 2) (result i32)
    (local i64)
    block  ;; label = @1
      i32.const 3
      call 14
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 1048972
      i32.const 10
      i32.const 1048697
      i32.const 14
      call 63
      unreachable
    end
    local.get 0
    i32.wrap_i64)
  (func (;66;) (type 8) (param i32) (result i32)
    local.get 0
    call 62)
  (func (;67;) (type 2) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      call 62
      local.tee 0
      call 15
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 1048968
      i32.const 4
      i32.const 1048795
      i32.const 16
      call 63
      unreachable
    end
    local.get 0)
  (func (;68;) (type 7) (param i32) (result i64)
    local.get 0
    call 14)
  (func (;69;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call 43
    local.tee 1
    call 16
    local.get 1)
  (func (;70;) (type 2) (result i32)
    i32.const 0
    call 62
    call 71)
  (func (;71;) (type 8) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call 15
        i32.const 4
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.store offset=12
        local.get 0
        i32.const 0
        local.get 1
        i32.const 12
        i32.add
        i32.const 4
        call 58
        drop
        i32.const 2147483646
        local.set 2
        local.get 1
        i32.load offset=12
        i32.const 1145849669
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 0
      local.set 2
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;72;) (type 5) (param i32)
    block  ;; label = @1
      call 17
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 1048672
    i32.const 25
    call 0
    unreachable)
  (func (;73;) (type 5) (param i32)
    local.get 0
    call 74
    call 18)
  (func (;74;) (type 8) (param i32) (result i32)
    local.get 0
    call 90
    call 43
    local.tee 0
    call 26
    drop
    local.get 0)
  (func (;75;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 76)
  (func (;76;) (type 3) (param i32 i32) (result i32)
    i32.const -1
    local.get 0
    local.get 1
    call 27
    local.tee 0
    i32.const 0
    i32.ne
    local.get 0
    i32.const 0
    i32.lt_s
    select)
  (func (;77;) (type 8) (param i32) (result i32)
    local.get 0
    call 15)
  (func (;78;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call 20
    local.get 0)
  (func (;79;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call 21
    local.get 0)
  (func (;80;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call 43
    local.tee 2
    local.get 0
    local.get 1
    call 81
    local.get 2)
  (func (;81;) (type 9) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 36
    block  ;; label = @1
      local.get 0
      call 31
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 1049304
    i32.const 48
    call 0
    unreachable)
  (func (;82;) (type 0) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call 22)
  (func (;83;) (type 0) (param i32 i32)
    local.get 0
    local.get 0
    local.get 1
    call 81)
  (func (;84;) (type 2) (result i32)
    (local i32)
    call 43
    local.tee 0
    i64.const 0
    call 1
    local.get 0)
  (func (;85;) (type 20) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        i32.sub
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store
        return
      end
      local.get 2
      local.get 3
      call 41
      unreachable
    end
    local.get 3
    i32.const 16
    call 40
    unreachable)
  (func (;86;) (type 20) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call 156
      drop
      return
    end
    local.get 1
    local.get 3
    call 155
    unreachable)
  (func (;87;) (type 8) (param i32) (result i32)
    (local i64)
    block  ;; label = @1
      local.get 0
      call 88
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      call 89
      unreachable
    end
    local.get 1
    i32.wrap_i64)
  (func (;88;) (type 7) (param i32) (result i64)
    (local i32 i64 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i64.const 0
    local.set 2
    local.get 1
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 0
      call 90
      local.tee 3
      call 15
      local.tee 0
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      local.get 0
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      call 39
      local.get 3
      i32.const 0
      local.get 1
      i32.load
      local.tee 4
      local.get 1
      i32.load offset=4
      local.tee 0
      call 58
      drop
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        i64.const 0
        local.set 2
        loop  ;; label = @3
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const -1
          i32.add
          local.set 0
          local.get 2
          i64.const 8
          i64.shl
          local.get 4
          i64.load8_u
          i64.or
          local.set 2
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 0 (;@3;)
        end
      end
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      local.get 2
      return
    end
    call 89
    unreachable)
  (func (;89;) (type 11)
    (local i32)
    i32.const 1048773
    i32.const 22
    call 64
    local.tee 0
    i32.const 1048697
    i32.const 14
    call 12
    drop
    local.get 0
    call 13
    unreachable)
  (func (;90;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call 43
    local.tee 1
    call 23
    drop
    local.get 1)
  (func (;91;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 3
    drop)
  (func (;92;) (type 0) (param i32 i32)
    (local i32)
    call 43
    local.tee 2
    local.get 1
    call 24
    drop
    local.get 0
    local.get 2
    call 25
    drop)
  (func (;93;) (type 5) (param i32)
    i32.const -20
    i32.const 0
    i32.const 0
    call 19
    drop
    local.get 0
    i32.const -20
    call 25
    drop)
  (func (;94;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.extend_i32_u
    call 95)
  (func (;95;) (type 1) (param i32 i64)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 1
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 1
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1049276
        local.set 3
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 4
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 8
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.const 8
              i32.add
              local.get 4
              i32.add
              local.tee 3
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 4
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 8
              local.get 4
              i32.sub
              local.set 4
              br 4 (;@1;)
            end
            i32.const 8
            i32.const 8
            call 106
            unreachable
          end
          local.get 4
          call 107
          unreachable
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    local.get 4
    call 108
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;96;) (type 19) (param i32 i32) (result i64)
    local.get 0
    local.get 1
    call 97
    call 88)
  (func (;97;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    call 45
    local.tee 0
    i32.const 1048762
    i32.const 5
    call 12
    drop
    local.get 2
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 12
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;98;) (type 8) (param i32) (result i32)
    (local i64)
    block  ;; label = @1
      local.get 0
      call 88
      local.tee 1
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      call 89
      unreachable
    end
    local.get 1
    i32.wrap_i64)
  (func (;99;) (type 8) (param i32) (result i32)
    local.get 0
    call 100
    call 71)
  (func (;100;) (type 8) (param i32) (result i32)
    local.get 0
    call 90)
  (func (;101;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 92)
  (func (;102;) (type 21) (param i32 i64) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    call 45
    local.tee 0
    i32.const 1048767
    i32.const 6
    call 12
    drop
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 1
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 1
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 12
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;103;) (type 21) (param i32 i64) (result i32)
    local.get 0
    local.get 1
    call 104
    i32.const 0
    i32.ne)
  (func (;104;) (type 21) (param i32 i64) (result i32)
    local.get 0
    local.get 1
    call 102
    call 87)
  (func (;105;) (type 22) (param i32 i64 i32)
    local.get 0
    local.get 1
    call 102
    local.get 2
    i64.extend_i32_u
    call 95)
  (func (;106;) (type 0) (param i32 i32)
    call 144
    unreachable)
  (func (;107;) (type 5) (param i32)
    local.get 0
    call 146
    unreachable)
  (func (;108;) (type 9) (param i32 i32 i32)
    (local i32)
    call 43
    local.tee 3
    local.get 1
    local.get 2
    call 19
    drop
    local.get 0
    local.get 3
    call 25
    drop)
  (func (;109;) (type 3) (param i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      local.set 2
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call 46
      local.set 2
    end
    local.get 2)
  (func (;110;) (type 20) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 1
    i32.const 16
    call 39
    local.get 4
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;111;) (type 2) (result i32)
    i32.const 1048815
    i32.const 9
    call 64)
  (func (;112;) (type 2) (result i32)
    i32.const 1048824
    i32.const 9
    call 64)
  (func (;113;) (type 0) (param i32 i32)
    (local i32 i32)
    i32.const 1048833
    i32.const 9
    call 64
    local.tee 2
    local.get 1
    i32.load
    call 91
    local.get 2
    call 45
    local.set 1
    local.get 2
    call 45
    local.tee 3
    i32.const 1048811
    i32.const 4
    call 12
    drop
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;114;) (type 2) (result i32)
    i32.const 1048842
    i32.const 12
    call 64)
  (func (;115;) (type 8) (param i32) (result i32)
    (local i32)
    i32.const 1048854
    i32.const 12
    call 64
    local.tee 1
    local.get 0
    i32.load
    call 91
    local.get 1)
  (func (;116;) (type 2) (result i32)
    i32.const 1048866
    i32.const 12
    call 64)
  (func (;117;) (type 8) (param i32) (result i32)
    (local i32)
    i32.const 1048878
    i32.const 14
    call 64
    local.tee 1
    local.get 0
    i32.load
    call 91
    local.get 1)
  (func (;118;) (type 8) (param i32) (result i32)
    (local i32)
    i32.const 1048892
    i32.const 16
    call 64
    local.tee 1
    local.get 0
    i32.load
    call 91
    local.get 1)
  (func (;119;) (type 2) (result i32)
    i32.const 1048908
    i32.const 19
    call 64)
  (func (;120;) (type 2) (result i32)
    i32.const 1048927
    i32.const 23
    call 64)
  (func (;121;) (type 8) (param i32) (result i32)
    (local i32)
    i32.const 1048950
    i32.const 8
    call 64
    local.tee 1
    local.get 0
    i32.load
    call 91
    local.get 1)
  (func (;122;) (type 2) (result i32)
    i32.const 1048958
    i32.const 10
    call 64)
  (func (;123;) (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 75
    i32.const 255
    i32.and
    i32.const 2
    i32.lt_u)
  (func (;124;) (type 2) (result i32)
    (local i32 i64 i64 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call 52
    i32.store offset=12
    local.get 0
    call 52
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call 118
    i32.const -25
    call 23
    drop
    block  ;; label = @1
      block  ;; label = @2
        i32.const -25
        call 15
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        call 52
        i32.store offset=16
        local.get 0
        i32.const 16
        i32.add
        call 118
        call 88
        local.set 1
        call 29
        local.set 2
        local.get 0
        i32.const 12
        i32.add
        call 115
        call 74
        local.set 3
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 12
        i32.add
        call 113
        local.get 0
        i32.const 24
        i32.add
        i32.load
        call 87
        local.set 4
        call 111
        call 98
        local.set 5
        local.get 2
        local.get 1
        i64.sub
        call 44
        local.get 5
        local.get 4
        i32.add
        call 42
        call 79
        local.get 3
        call 79
        i64.const 31536000
        call 44
        call 78
        i32.const 100
        call 42
        call 78
        local.set 3
        br 1 (;@1;)
      end
      call 84
      local.set 3
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0
    local.get 3)
  (func (;125;) (type 11)
    (local i32 i64 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 29
    local.set 1
    local.get 0
    call 52
    i32.store offset=8
    call 124
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call 117
    local.tee 3
    call 74
    local.tee 4
    local.get 4
    local.get 2
    call 22
    local.get 3
    local.get 4
    call 101
    local.get 0
    call 52
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 118
    local.get 1
    call 95
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;126;) (type 11)
    (local i32 i32 i32 i32 i64 i32)
    call 30
    i32.const 5
    call 72
    call 70
    local.set 0
    i32.const 1
    call 69
    local.set 1
    i32.const 2
    call 66
    local.set 2
    call 65
    local.set 3
    i32.const 4
    call 68
    local.set 4
    block  ;; label = @1
      local.get 1
      call 31
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            call 116
            local.set 5
            local.get 0
            i32.const 2147483646
            i32.eq
            br_if 1 (;@3;)
            local.get 5
            local.get 0
            call 25
            drop
            br 2 (;@2;)
          end
          i32.const 1049099
          i32.const 15
          call 47
          unreachable
        end
        local.get 5
        i32.const 1048740
        i32.const 4
        call 108
      end
      call 119
      local.get 1
      call 92
      call 122
      local.get 2
      call 25
      drop
      call 111
      local.get 3
      i64.extend_i32_u
      call 95
      call 120
      local.get 4
      call 95
      return
    end
    i32.const 1049073
    i32.const 26
    call 47
    unreachable)
  (func (;127;) (type 11)
    call 30
    i32.const 0
    call 72
    call 124
    call 18)
  (func (;128;) (type 11)
    (local i32 i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 72
    local.get 0
    call 52
    i32.store offset=8
    call 116
    call 99
    local.set 1
    call 29
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    call 117
    call 74
    local.tee 3
    local.get 3
    call 124
    call 22
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        call 84
        call 76
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        call 53
        local.set 4
        call 43
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 2147483646
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            call 129
            i32.const 1049377
            local.get 5
            call 32
            br 1 (;@3;)
          end
          local.get 1
          call 15
          local.set 6
          local.get 4
          call 129
          local.get 1
          i32.const 1049409
          call 33
          drop
          i32.const 1049377
          i32.const 1049409
          local.get 6
          i64.const 0
          local.get 5
          call 34
        end
        local.get 5
        local.get 3
        call 80
        call 112
        call 74
        call 123
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.add
        call 117
        call 84
        call 101
        local.get 0
        call 52
        i32.store offset=12
        local.get 0
        i32.const 12
        i32.add
        call 118
        local.get 2
        call 95
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        local.get 3
        call 51
      end
      local.get 0
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1049114
    i32.const 45
    call 47
    unreachable)
  (func (;129;) (type 5) (param i32)
    local.get 0
    i32.const 1049377
    call 33
    drop)
  (func (;130;) (type 11)
    call 30
    i32.const 0
    call 72
    call 111
    call 98
    i64.extend_i32_u
    call 35)
  (func (;131;) (type 11)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 72
    local.get 0
    call 67
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 121
    call 88
    call 35
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;132;) (type 11)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 72
    local.get 0
    call 67
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call 113
    local.get 0
    i32.const 24
    i32.add
    i32.load
    call 87
    local.set 1
    local.get 0
    i32.load offset=20
    local.set 2
    i32.const 1
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 3
        call 96
        call 35
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;133;) (type 11)
    call 30
    i32.const 0
    call 72
    call 114
    call 73)
  (func (;134;) (type 11)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 72
    local.get 0
    call 67
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 115
    call 73
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;135;) (type 11)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 72
    local.get 0
    call 67
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 117
    call 73
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;136;) (type 11)
    call 30
    i32.const 0
    call 72
    call 112
    call 73)
  (func (;137;) (type 11)
    (local i32 i32 i32 i64 i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 72
    call 125
    local.get 0
    call 52
    i32.store offset=12
    call 116
    call 99
    local.set 1
    local.get 0
    call 56
    local.get 0
    i32.load offset=4
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.get 1
        call 109
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call 119
        call 74
        call 123
        i32.eqz
        br_if 1 (;@1;)
        call 120
        call 88
        local.set 3
        call 29
        local.set 4
        local.get 0
        i32.const 12
        i32.add
        call 121
        local.get 4
        local.get 3
        i64.add
        call 95
        call 112
        local.tee 1
        call 74
        local.tee 5
        local.get 2
        call 82
        local.get 1
        local.get 5
        call 101
        local.get 0
        i32.const 12
        i32.add
        call 115
        local.tee 1
        call 74
        local.tee 5
        local.get 2
        call 82
        local.get 1
        local.get 5
        call 101
        local.get 0
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 1049159
      i32.const 19
      call 47
      unreachable
    end
    i32.const 1049178
    i32.const 25
    call 47
    unreachable)
  (func (;138;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    local.set 1
    i32.const 0
    call 72
    call 125
    local.get 0
    call 52
    i32.store offset=4
    i32.const 1
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        call 55
        local.tee 3
        call 57
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        call 15
        local.set 4
        local.get 0
        i32.const 16
        i32.add
        local.set 5
        i32.const 0
        local.set 6
        loop  ;; label = @3
          local.get 6
          local.set 7
          local.get 1
          i32.const 16
          i32.add
          local.tee 8
          local.get 4
          i32.gt_u
          br_if 2 (;@1;)
          local.get 5
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 3
          local.get 1
          local.get 0
          i32.const 8
          i32.add
          i32.const 16
          call 58
          drop
          local.get 0
          i32.const 0
          i32.store offset=28
          i32.const 1
          local.set 6
          local.get 2
          i32.const 1
          i32.and
          local.set 9
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 59
          local.set 10
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 60
          local.set 11
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 61
          drop
          local.get 8
          local.set 1
          i32.const 0
          local.set 2
          local.get 9
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const 1
        call 106
        unreachable
      end
      i32.const 1048612
      i32.const 34
      call 0
      unreachable
    end
    block  ;; label = @1
      local.get 10
      call 122
      call 100
      call 46
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.const 4
      i32.add
      call 113
      block  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 11
        call 103
        br_if 0 (;@2;)
        local.get 0
        i32.const 16
        i32.add
        i32.load
        local.tee 1
        call 87
        local.set 6
        local.get 0
        i32.load offset=12
        local.get 6
        i32.const 1
        i32.add
        local.tee 6
        call 97
        local.get 11
        call 95
        local.get 1
        local.get 6
        call 94
        local.get 0
        i32.const 8
        i32.add
        local.get 11
        local.get 1
        call 87
        call 105
      end
      local.get 0
      i32.const 32
      i32.add
      global.set 0
      return
    end
    i32.const 1048982
    i32.const 26
    call 47
    unreachable)
  (func (;139;) (type 11)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 54
    i32.const 0
    call 72
    call 116
    call 99
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call 56
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.get 1
      call 109
      br_if 0 (;@1;)
      i32.const 1049159
      i32.const 19
      call 47
      unreachable
    end
    call 114
    local.tee 1
    call 74
    local.tee 3
    local.get 2
    call 82
    local.get 1
    local.get 3
    call 101
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;140;) (type 11)
    (local i32 i32 i64 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 72
    i32.const 0
    call 69
    local.set 1
    local.get 0
    call 52
    i32.store offset=12
    call 29
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        call 121
        call 88
        local.get 2
        i64.ge_u
        br_if 0 (;@2;)
        call 125
        local.get 1
        local.get 0
        i32.const 12
        i32.add
        call 115
        local.tee 3
        call 74
        local.tee 4
        call 76
        i32.const 255
        i32.and
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        call 80
        local.set 4
        call 112
        local.tee 5
        call 74
        local.tee 6
        local.get 1
        call 83
        local.get 5
        local.get 6
        call 101
        local.get 3
        local.get 4
        call 92
        local.get 0
        i32.const 12
        i32.add
        call 116
        call 99
        local.get 1
        call 51
        local.get 0
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 1049203
      i32.const 24
      call 47
      unreachable
    end
    i32.const 1049227
    i32.const 49
    call 47
    unreachable)
  (func (;141;) (type 11)
    (local i32 i32 i64 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 2
    call 72
    i32.const 0
    call 66
    local.set 1
    i32.const 1
    call 68
    local.set 2
    call 125
    local.get 0
    call 52
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    local.get 0
    i32.const 12
    i32.add
    call 113
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 16
          i32.add
          local.get 2
          call 103
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.const 12
          i32.add
          call 113
          local.get 0
          i32.const 16
          i32.add
          local.get 2
          call 104
          local.tee 3
          i32.eqz
          br_if 2 (;@1;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 24
                i32.add
                i32.load
                local.tee 4
                call 87
                local.tee 5
                local.get 3
                i32.lt_u
                br_if 0 (;@6;)
                local.get 5
                local.get 3
                i32.eq
                local.tee 6
                br_if 4 (;@2;)
                local.get 4
                call 87
                local.get 5
                i32.lt_u
                br_if 1 (;@5;)
                local.get 0
                i32.load offset=20
                local.tee 7
                local.get 5
                call 96
                local.set 8
                local.get 4
                call 87
                local.get 3
                i32.lt_u
                br_if 2 (;@4;)
                local.get 7
                local.get 3
                call 97
                local.get 8
                call 95
                br 4 (;@2;)
              end
              i32.const 1048744
              i32.const 18
              call 0
              unreachable
            end
            i32.const 1048744
            i32.const 18
            call 0
            unreachable
          end
          i32.const 1048744
          i32.const 18
          call 0
          unreachable
        end
        i32.const 1049008
        i32.const 25
        call 47
        unreachable
      end
      block  ;; label = @2
        local.get 4
        call 87
        local.get 5
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1048744
        i32.const 18
        call 0
        unreachable
      end
      local.get 0
      i32.load offset=20
      local.get 5
      call 97
      call 93
      local.get 4
      local.get 5
      i32.const -1
      i32.add
      call 94
      block  ;; label = @2
        local.get 6
        br_if 0 (;@2;)
        local.get 0
        i32.const 16
        i32.add
        local.get 8
        local.get 3
        call 105
      end
      local.get 0
      i32.const 16
      i32.add
      local.get 2
      call 102
      call 93
    end
    local.get 0
    i32.const 12
    i32.add
    local.get 1
    local.get 2
    i32.const 1
    call 42
    call 48
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;142;) (type 11)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 54
    i32.const 1
    call 72
    i32.const 0
    call 69
    local.set 1
    local.get 0
    call 52
    i32.store offset=12
    call 116
    call 99
    local.set 2
    block  ;; label = @1
      call 114
      call 74
      local.get 1
      call 76
      i32.const 255
      i32.and
      i32.const 255
      i32.eq
      br_if 0 (;@1;)
      i32.const 1049033
      i32.const 40
      call 47
      unreachable
    end
    call 114
    local.tee 3
    call 74
    local.tee 4
    local.get 1
    call 83
    local.get 3
    local.get 4
    call 101
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    local.get 1
    call 51
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;143;) (type 11))
  (func (;144;) (type 11)
    call 145
    unreachable)
  (func (;145;) (type 11)
    i32.const 1049352
    i32.const 14
    call 0
    unreachable)
  (func (;146;) (type 5) (param i32)
    local.get 0
    call 147
    unreachable)
  (func (;147;) (type 5) (param i32)
    local.get 0
    call 148
    unreachable)
  (func (;148;) (type 5) (param i32)
    call 144
    unreachable)
  (func (;149;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 150
    unreachable)
  (func (;150;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 151
    unreachable)
  (func (;151;) (type 0) (param i32 i32)
    call 144
    unreachable)
  (func (;152;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 153
    unreachable)
  (func (;153;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 154
    unreachable)
  (func (;154;) (type 0) (param i32 i32)
    call 144
    unreachable)
  (func (;155;) (type 0) (param i32 i32)
    call 144
    unreachable)
  (func (;156;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call 157)
  (func (;157;) (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 15
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          i32.const 3
          i32.shl
          local.tee 6
          i32.const 24
          i32.and
          local.set 2
          local.get 9
          i32.const -4
          i32.and
          local.tee 10
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 6
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 10
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 2
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 9
      local.get 8
      i32.add
      local.set 1
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049441))
  (global (;2;) i32 (i32.const 1049456))
  (export "memory" (memory 0))
  (export "init" (func 126))
  (export "calculatedRewards" (func 127))
  (export "claim" (func 128))
  (export "getAprNormal" (func 130))
  (export "getLockTime" (func 131))
  (export "getNftStaked" (func 132))
  (export "getRewardSupply" (func 133))
  (export "getStakedAmount" (func 134))
  (export "getStorageRewards" (func 135))
  (export "getstakedAll" (func 136))
  (export "stake" (func 137))
  (export "stakeboost" (func 138))
  (export "supply" (func 139))
  (export "unstake" (func 140))
  (export "unstakeboost" (func 141))
  (export "withdrawsupply" (func 142))
  (export "callBack" (func 143))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "Endpoint can only be called by ownerincorrect number of ESDT transfersargument decode error (): wrong number of argumentsinput too longManagedVec index out of rangeEGLDindex out of range.item.indexstorage decode error: bad array length.lenaprNormalstakedAllstakedNftrewardSupplystakedAmountstakingTokenstorageRewardsstoredTimestampsrequiredStakeAmountlockAssetsTimeInSecondslockTimestakingNftuserapr_normalNot whitelisted collectionYou didnt staked this NFTYou cant withdraw more than you suppliedStaking amount cannot be 0APR cannot be 0Claim disabled, low amount of provided tokensInvalid token inputStaking amount is too lowLock time did not passedUnstake amount is greater than your staked amountfungible ESDT token expectedcannot subtract because result would be negativepanic occurred")
  (data (;1;) (i32.const 1049368) "\9c\ff\ff\ff"))
