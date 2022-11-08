/*Solidity supports multiple inheritance. Contracts can inherit other contract by using the is keyword.

Function that is going to be overridden by a child contract must be declared as virtual.

Function that is going to override a parent function must use the keyword override.

Order of inheritance is important.

You have to list the parent contracts in the order from “most base-like” to “most derived”.
The super keyword in Solidity gives access to the immediate parent contract from which the
current contract is derived.*/



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A{

    function foo()public pure virtual returns (string memory){
        return "A";
    }

    
}

contract B is A{
    function foo()public pure virtual override returns (string memory){
        return "B";
    }
}

contract C is A{
    function foo() public pure virtual override returns (string memory){
        return "C";
    }
}

contract D is B,C{
    function foo() public pure override(B,C) returns(string memory){
        return super.foo();
    }
}
