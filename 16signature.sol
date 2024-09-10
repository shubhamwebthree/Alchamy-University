//Alert the Hero, manually this time!

//Fill in the function signature for the Hero's alert function. Notice that we are taking the first 4 bytes of the hash of this function and passing it in as calldata to the hero.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function sendAlert(address hero) external {
        // TODO: fill in the function signature in the ""
        bytes4 signature = bytes4(keccak256("alert()"));

        (bool success, ) = hero.call(abi.encodePacked(signature));

        require(success);
    }
}

