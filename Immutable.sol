/*Immutable variables are like constants. Values of
 immutable variables can be set inside the constructor as well as while declaring
but cannot be modified afterwards.*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Immutable{
    uint public immutable a;
    address public immutable b;
    constructor(uint _a){
        a=_a;
        b=msg.sender;

    }

}
