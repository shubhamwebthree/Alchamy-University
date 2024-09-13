//Create an external, view function hasVoted which takes an address and returns a bool indicating if the address has cast a vote or not.
//Create an external, view function findChoice which takes an address and returns a Choices value indicating the choice on the vote cast by the address. For this function there is no need to worry about the case where a vote was not cast.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	enum Choices { Yes, No }
	
	struct Vote {
		Choices choice;
		address voter;
	}

	Vote[] public votes;
	
	function createVote(Choices choice) external {
		votes.push(Vote(choice,msg.sender));
	}

	function hasVoted(address _voterAddr) external view returns(bool){
		for(uint i = 0;i<votes.length;i++){
			if(votes[i].voter == _voterAddr){
				return true; 
			}
			return false;
		}
	}

	function findChoice(address _voterAddr) external view returns(Choices){
		for(uint i = 0;i<votes.length;i++){
			if(votes[i].voter == _voterAddr){
				return votes[i].choice;
			}
		}
	}
}
