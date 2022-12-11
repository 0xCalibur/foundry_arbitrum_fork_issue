# foundry_arbitrum_fork_issue

```
forge test -vvvv
```

produces:
```
Running 1 test for test/Test.t.sol:CounterTest
[FAIL. Reason: Setup failed: EvmError: Revert] setUp() (gas: 0)
Traces:
  [0] CounterTest::setUp() 
    ├─ [0] VM::createSelectFork(https://1rpc.io/arb, 44679129) 
    │   └─ ← 0
    ├─ [1802154] → new MyScript@0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f
    │   ├─ [0] VM::rpcUrlStructs() [staticcall]
    │   │   └─ ← []
    │   └─ ← 1596 bytes of code
    ├─ [8937393460516790336] MyScript::run() 
    │   ├─ [0] VM::startBroadcast() 
    │   │   └─ ← ()
    │   ├─ [212657] → new ProxyOracle@0x5b73C5498c1E3b4dbA84de0F1833c4a029d90519
    │   │   └─ ← 1062 bytes of code
    │   ├─ [8937393460514951365] → new <Unknown>@0x104fBc016F4bb334D775a19E8A6510109AC63E00
    │   │   └─ ← 0 bytes of code
    │   └─ ← "EvmError: Revert"
    └─ ← ()
```

removing vm.createSelectFork in the test doesn't produce the issue.
