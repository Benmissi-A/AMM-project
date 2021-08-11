//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Pool is IERC20{
    address private _poolOwner;
    bool private _init;
 
     address private _assetA;
     address private _assetB;
     
     uint256 private _balanceA;
     uint256 private _balanceB;
     
     uint256 private _Product_Market_Maker =  _balanceA * _balanceB;

    constructor(address assetA_ , address assetB_){
        
        _assetA = assetA_;
        _assetB = assetB_;
    }

    
    function deposit (uint256 amountA_ , uint256 amountB_) public {
        if(!_init){
            require (amountA_ > 0 , "Pool : put some assetA");
            require (amountB_ > 0 , "Pool : put some assetB");
            _poolOwner = address(msg.sender);
            
        } 
        _init = true;
        transferFrom(msg.sender , address(this) , amountA_);
        transferFrom(msg.sender , address(this) , amountB_);
        
    }
}
