//Create a public mapping called members which maps an address to a bool. The bool will indicate whether or not the address is currently a member!
//Create an external function called addMember which takes an address and adds it as a member. You can do this by storing true in the data location corresponding to the address in the members mapping.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    
    mapping(address => bool) public members;

    function addMember(address adds) external{
        members[adds] = true;
    } 

}
