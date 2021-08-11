//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Pool {
     address private _poolOwner;
     uint256 private _initialBalance;

    constructor( address poolOwner_ , uint256 initialBalance_){
        _poolOwner = poolOwner_ ;
        _initialBalance = initialBalance_ ;
    }
}
