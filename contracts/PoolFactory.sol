//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./Pool.sol";

contract PoolFactory {
    Pool[] public poolAddresses;
    event PoolCreated(Pool pool);

    address private _poolOwner;

    constructor(address poolOwner_ ) {
        _poolOwner = poolOwner_ ;
    }

    function createPool(uint256 initialBalance_) external {
        Pool pool = new Pool( _poolOwner, initialBalance_);

        poolAddresses.push(pool);
        emit PoolCreated(pool);
    }

    function getPools() external view returns (Pool[] memory) {
        return poolAddresses;
    }
}
