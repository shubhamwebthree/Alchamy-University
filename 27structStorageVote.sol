//Create a new struct called Vote that contains two properties: a Choices choice and an address voter.
//Then create a public storage variable called vote which is of the Vote type.
//Finally, in the createVote function create a new instance of Vote and store it in the storage variable vote. Use the choice passed in as an argument and the msg.sender for the vote properties.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	
	enum Choices { 
	Yes, 
	No 
	}

	struct Vote{
	Choices choice;
	address voter;
	}
	
	Vote public vote;

	function createVote(Choices choice) external {
		vote = Vote(choice, msg.sender);
	}
}
