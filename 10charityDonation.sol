//First, modify the constructor to accept a new argument: the charity address.
//Next, add a new function called donate. When this function is called transfer all remaining funds in the contract to the charity address.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
   address public owner;
    address public charityAddr;

   constructor (address _charityAddr){
       owner = msg.sender;
       charityAddr = _charityAddr;
   }

   function donate () public {
    uint256 balance = address(this).balance;

    (bool success,) = charityAddr.call{value : balance}("");
   require(success);
}

receive() external payable{ 
msg.value;
}
}
