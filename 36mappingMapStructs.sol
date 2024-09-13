//Let's create a new token where every new user will receive 100 tokens!
//Create a public mapping called users that will map an address to a User struct.
//Create an external function called createUser. This function should create a new user and associate it to the msg.sender address in the users mapping.
//The balance of the new user should be set to 100 and the isActive boolean should be set to true.

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


}
