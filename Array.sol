// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Array{

    uint [] public arr;

    function push(uint i) public {
        arr.push(i);
    }

    function pop () public{
        arr.pop();
    }
    function length() public view returns (uint){
        return arr.length;
    }

    function remove(uint i) public {
        delete arr[i];/*when we remove a element by entering the index number
        arr len will not change, rather the value will get zero*/
    }

    function getarray() public view returns (uint[] memory){
        return arr;
    }

    


}
