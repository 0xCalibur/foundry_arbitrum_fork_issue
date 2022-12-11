// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console2.sol";
import "../src/ProxyOracle.sol";

contract MyScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        ProxyOracle a = new ProxyOracle(1);
        ProxyOracle b = new ProxyOracle(2);

        console2.log(address(a));
        console2.log(address(b));
        vm.stopBroadcast();
    }
}
