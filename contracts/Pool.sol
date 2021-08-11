//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Pool is IERC20{
    bool private _init;
 
     address private _assetA;
     address private _assetB;
     
     uint256 private _balanceA;
     uint256 private _balanceB;

    constructor(_assetA , _assetB){}

    }
    
    
    
    function deposit ()  {
        _init = true;
        _poolOwner = address(msg.sender)
    }
}
