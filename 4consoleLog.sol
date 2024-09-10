//There is a message being passed to you in the winningNumber function. You can use console.log to display this message to the console. It will tell you what to do from there!

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";


contract Contract {

    function winningNumber(string calldata _secretMessage) external view returns(uint) {

        console.log(_secretMessage);
        
        uint256 generatedNumber = 794; 

        return generatedNumber;
    }
}
