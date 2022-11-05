
/*Maps are created with the syntax mapping(keyType => valueType).

The keyType can be any built-in value type, bytes, string, or any contract.

valueType can be any type including another mapping or an array.

Mappings are not iterable.*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ifelse{
    mapping(address=>uint)  balance;


    function setBalance(address _new, uint a) public{
        balance[_new]=a;
    }

    function Getbalance(address _new) public view returns(uint){
        return balance[_new];
    }



}
