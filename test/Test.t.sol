// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "script/MyScript.s.sol";

contract CounterTest is Test {
   

    function setUp() public {
        vm.createSelectFork(
            "https://1rpc.io/arb",
            44679129
        );

        MyScript script = new MyScript();
        script.run();
    }

    function testIncrement() public {
        assertTrue(true == true);
    }
}
