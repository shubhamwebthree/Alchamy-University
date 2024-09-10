//The Sidekick needs to be able to relay any calldata along to the Hero. Update the relay function to take the data and send it to the Hero as calldata.



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function relay(address hero, bytes memory data) external {
        
        (bool success, ) = hero.call(data);
        require(success, "Relay failed");
    }
}
