//In the makeContact method, send some calldata to the Hero contract that will trigger its fallback function.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function makeContact(address hero) external {
        (bool success,) = hero.call("fallback()");
        require(success,"faild");
    }   
}
