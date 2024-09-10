//Alert the Hero by calling alert and passing the number of enemies and whether or not they are armed 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function sendAlert(address hero, uint256 enemies, bool armed) external {
        (bool success, ) = hero.call(
            abi.encodeWithSignature("alert(uint256,bool)",enemies,armed)
        );

        require(success,"Alert failed");
    }
}
