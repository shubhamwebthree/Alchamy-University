//Add a function to the contract that will allow it to receive ether on a transaction without any calldata.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
   address public owner;

   constructor (){
       owner = msg.sender;
   } 

receive() external payable{ 
msg.value;
}
}
