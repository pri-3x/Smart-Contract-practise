
/*To write or update a state variable you need to send a transaction.

On the other hand, you can read state variables, for free, without any transaction fee.*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract New{
    uint public num;
    // You need to send a transaction to write to a state variable.
    function update(uint _num) public{
        num=_num;
    }
// You can read from a state variable without sending a transaction.
    function display()public view returns(uint){
        return num;
    }
    }