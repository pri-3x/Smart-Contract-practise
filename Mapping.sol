
/*Maps are created with the syntax mapping(keyType => valueType).

The keyType can be any built-in value type, bytes, string, or any contract.

valueType can be any type including another mapping or an array.

Mappings are not iterable.*/


// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract SingleMapping{

    mapping(address=>uint)  balance;


    function setmapping(address _a, uint _b )public {
        balance[_a]=_b;

    }

    function getmapping(address _a) public view returns (uint){
        return balance[_a];

    }
}

contract DoubleMapping{
    mapping(address=>mapping(uint=>bool)) balance1;

    function setmapping(address _a, uint _b, bool _c) public{
        balance1[_a][_b]=_c;
    }

    function getmapping(address _a, uint _b) public view returns (bool){
        return balance1[_a][_b];
    }


}
