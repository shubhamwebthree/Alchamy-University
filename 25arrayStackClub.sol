//Create a dynamic sized array of addresses called members
//Create an external function addMember which has a single parameter: an address for a new member. Add this address to the members array.
//Create a public view function isMember that takes an address and returns a bool indicating whether the address is a member or not.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {
    address[] public members;

function addMember(address  _newMember) external {
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
}
