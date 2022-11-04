/*Here is a simple contract that you can get, increment and decrement the count store in this contract.*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Task{
    uint public count;

    function increment() public{
        count=count+1;
    }
    function decrement()public{
        count=count-1;
    }
    
    
}
