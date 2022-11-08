/*Events allow logging to the Ethereum blockchain. Some use cases for events are:

Listening for events and updating user interface
A cheap form of storage*/



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event{
    event log(address indexed sender, string message);
    event anotherlog();


    function hello() public{
        emit log(msg.sender, "Hello World");
        emit log(msg.sender, "Hello Priyanshu");
        emit anotherlog();


    }
}

    
