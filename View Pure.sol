Getter functions can be declared view or pure.

View function declares that no state will be changed.

Pure function declares that no state variable will be changed or read.


// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Function{

    uint public x=1;

    function getter1(uint y) public view returns (uint){
        return  x+y;
    }

    function getter2(uint z, uint a) public pure  returns (uint){
        return a+z;
    }
