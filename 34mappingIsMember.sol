//Create an external, view function called isMember which takes an address and returns a bool indicating whether or not the address is a member.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    
    mapping(address => bool) public members;

    function addMember(address adds) external{
        members[adds] = true;
    } 
    function isMember(address _addr) external view returns(bool){
        return members[_addr];
    }
}
