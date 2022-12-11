// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "./IOracle.sol";

contract ProxyOracle is IOracle {
    IOracle public oracleImplementation;
    uint256 public foo;

    constructor(uint256 _foo) {
        foo = _foo;
    }

    event LogOracleImplementationChange(
        IOracle indexed oldOracle,
        IOracle indexed newOracle
    );

    function get(bytes calldata data) public override returns (bool, uint256) {
        return oracleImplementation.get(data);
    }

    function peek(bytes calldata data)
        public
        view
        override
        returns (bool, uint256)
    {
        return oracleImplementation.peek(data);
    }

    function peekSpot(bytes calldata data)
        external
        view
        override
        returns (uint256 rate)
    {
        return oracleImplementation.peekSpot(data);
    }

    function name(bytes calldata) public pure override returns (string memory) {
        return "Proxy Oracle";
    }

    function symbol(bytes calldata)
        public
        pure
        override
        returns (string memory)
    {
        return "Proxy";
    }
}
