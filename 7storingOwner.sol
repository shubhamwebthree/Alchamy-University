//Create a public address state variable called owner on the contract
//Next create a constructor function which will store the msg.sender in owner



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
   address public owner;

   constructor (){
       owner = msg.sender;
   } 
}
