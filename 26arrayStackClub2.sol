//Create a constructor which will add the deployer address as the first member of the stack club.
//Create a removeLastMember function which will remove the last member added to the club.
//Ensure that the removeLastMember function can only be called by an existing member
//Ensure that addMember can only be called by an existing member

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {
    address[] public members;

constructor (){
    members.push(msg.sender);
}

modifier existingMember {
        require(isMember(msg.sender), "Caller is not a member");
		_;
}

function addMember(address  _newMember) external existingMember {
    members.push(_newMember);
}

function isMember (address _address) public view returns(bool){
        for (uint256 i = 0; i < members.length; i++) {
            if (members[i] == _address) {
                return true;  
            }
        }
        return false;
}

function removeLastMember() external existingMember{
    members.pop();
}
}
