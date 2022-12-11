// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/ProxyOracle.sol";

contract MyScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        new ProxyOracle(1);
        new ProxyOracle(2);

        vm.stopBroadcast();
    }
}
