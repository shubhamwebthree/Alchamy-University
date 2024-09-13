//Create an external function called changeVote which takes a Choices argument and changes the choice on the existing vote for the msg.sender.
//If they do not have an existing vote, revert the call. 

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
		require(!hasVoted(msg.sender), "You Already Voted");
		votes.push(Vote(choice,msg.sender));
	}

	function hasVoted(address _voterAddr) public view returns(bool){
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
	revert("Voter has not cast a vote."); 
	}

	function changeVote(Choices newChoice) external {
        bool voteChanged = false;        
        for (uint i = 0; i < votes.length; i++){
            if (votes[i].voter == msg.sender) {
                votes[i].choice = newChoice;
                voteChanged = true;
            }
        }  
        require(voteChanged, "You have not voted.");
    }

}
