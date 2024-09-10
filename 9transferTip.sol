//Create a public payable function tip which sends any of its received ether to the owner.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
   address public owner;

   constructor (){
       owner = msg.sender;
   } 

function tip() public payable{
    (bool success,) = owner.call{value : msg.value}("");
}

receive() external payable{ 
msg.value;
}
}
