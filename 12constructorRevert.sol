//Add a payable constructor method that requires a 1 ether deposit.

//If at least 1 ether is not sent to the constructor, revert the transaction.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
   
    error doNotPay(uint256);
    
    constructor() payable{   

        require(msg.value >= 1 ether, "Must send at least 1 ether");
        if(msg.value <= 1){
            revert doNotPay(msg.value);
        }
    }

}
