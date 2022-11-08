/*Visilibilty of functions and variable:public, private, external and internal*/
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Visibility{

    //VARIBALE VISIBILITY

    uint private a=10; //accessed inside the contract only
    uint public b=11;// accessed inside and outside of the contract
    uint internal c=12;// accssed inside and inherited contract only

    function sum ()public view returns(uint){
        return a+b+c;
    } 

    //FUNCTION VISIBILITY
    function publicfunc() public pure returns (uint){
        return 0;
    }

    function privatefunc() private pure returns(uint){
        return 1;
    }

    function internalfunc() internal pure returns  (uint){
        return 2;
    }
    
    function externalfunc() external pure returns (uint){
        return 3;
    }

    function callfunc() public pure {
        publicfunc();
        privatefunc();
        internalfunc();
        //this.externalfunc();
        
    }


}

contract inherited is Visibility{
    function calls() public pure{
        publicfunc();
        internalfunc();
        
    }
}

contract Test{
     Visibility obj=new Visibility();
    function calling() public view{
        obj.externalfunc();
        obj.publicfunc();

        


    }

}
