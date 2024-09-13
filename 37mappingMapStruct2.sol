//Create an external function called transfer which takes two parameters: an address for the recipient and a uint for the amount.
//In this function, transfer the amount specified from the balance of the msg.sender to the balance of the recipient address.
 
 //Contract Security
//Ensure that both addresses used in the transfer function have active users.
//Ensure that the msg.sender has enough in their balance to make the transfer without going into a negative balance.
//If either of these conditions aren't satisfied, revert the call.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

	function createUser() external{
		User storage user = users[msg.sender];
		require(user.isActive != true,"You're not Active user");
		user.balance = 100;
		user.isActive = true;
	}
	
	function transfer(address _recipient, uint _amount) external{
		User storage sender = users[msg.sender];
		User storage recipient = users[_recipient];

        require(sender.isActive, "You're not Active user");
        require(sender.balance >= _amount, "Insufficient balance");
        require(_recipient != address(0), "Invalid recipient address");
		require(recipient.isActive, "Recipient must be an active user");

		sender.balance -= _amount;
		recipient.balance += _amount;
	
		if (!recipient.isActive) {
        recipient.isActive = true;
    	}
	}
}
