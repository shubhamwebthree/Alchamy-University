//Create a public function withdraw that will withdraw all funds from the contract and send them to the deployer of the contract.
//Require that only the deployer of the contract be allowed to call this function. For all other addresses, this function should revert.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address public owner;

    constructor() payable {
        require(msg.value >= 1 ether, "Must send at least 1 ether");
        owner = msg.sender; // Set the deployer as the owner
    }

    // Public function to withdraw all funds to the deployer's address
    function withdraw() public  {
        require(msg.sender == owner, "Caller is not the owner");
        payable(owner).transfer(address(this).balance);
    }

}
