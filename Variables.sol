//There are 3 types of variables in Solidity

local:
declared inside a function
not stored on the blockchain
state:
declared outside a function
stored on the blockchain
global (provides information about the blockchain)//







// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Variables {
uint public num=123;//State variables
string public word="Hello World";// State Variables

function get()public pure returns(uint){
    uint i =90; //Local Varibales
    return i;

    
}

// Here are some global variables
uint public timestamp=block.timestamp; // Current block timestamp
    address public sender=msg.sender; //Address of the caller
}
