/*Anyone can send ETH.
Only the owner can withdraw.*/



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Wallet{

address payable public owner;
constructor(){
owner=payable(msg.sender);

}
receive() external payable(){}

function withdraw(uint _amount)public(){
require(msg.sender==owner,"Only owner can withdraw");
payable(msg.sender).transfer(_amount);

}

function getBalance()public view returns (uint){

return address(this).balance;
}
}
