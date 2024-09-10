//Create three public storage variables for the addresses of the depositor, beneficiary and arbiter.

//Create a constructor which takes two arguments: an address for the arbiter and an address for the beneficiary (in that order). Store these variables in the corresponding state variables.
//The depositor is the address deploying the contract, so take this address and store it in the depositor state variable.

//Modify the constructor function to make it payable.

//Create an external function called approve.
//This function should move the contract's balance to the beneficiary's address.

//If anyone tries to call approve other than the arbiter address, revert the transaction.

//Create an event called Approved which takes a single uint parameter: the balance that is sent to the beneficiary.
//Emit this event from within the approve function.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {
    
address public depositor;
address public beneficiary;
address public arbiter;
error doNotPay(uint);
event Approved(uint);

constructor(address _arbiter, address _beneficiary) payable{
    arbiter = _arbiter;
    beneficiary = _beneficiary;
    depositor = msg.sender;
}

function approve() external payable {
  
    // (bool success,) = beneficiary.call{value : 1 ether}("");
    // require(success);

    uint256 balance = address(this).balance;
    (bool success,) = beneficiary.call{value : balance}("");
    require(success,"failed");

    // payable(beneficiary).transfer(address(this).balance);

    if(msg.sender != arbiter){
    revert doNotPay(balance);
    }
    emit Approved(balance);
}

}
