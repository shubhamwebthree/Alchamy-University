//When the donate function is called, trigger a selfdestruct in the contract!


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
   selfdestruct(payable(msg.sender));
}

receive() external payable{ 
msg.value;
}
}
