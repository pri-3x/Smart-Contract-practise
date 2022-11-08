
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Transfer{
    
address public owner;
    constructor() payable  {
        owner=msg.sender;
    }
    receive() external payable{
        
    }

        function getbalance() public view returns(uint){
            return address(this).balance;   
        
    }

    function getAddress() public view returns(address){
        return address(this);
    }

    function transfer(address payable receiver) public payable{
        receiver.transfer(msg.value);
    }

}



// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;
contract receiver{
    receive() external payable{}
    function check() public view returns (uint){
        return address(this).balance;
    }
}
