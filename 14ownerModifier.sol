//You'll notice that the onlyOwner modifier has been added to each of the configuration functions in this contract. Only problem is, it doesn't currently do anything!

//Update the onlyOwner modifier to require that only the owner address can call these functions without reverting.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	uint configA;
	uint configB;
	uint configC;
	address owner;

	constructor() {
		owner = msg.sender;
	}

	function setA(uint _configA) public onlyOwner {
		configA = _configA;
	}

	function setB(uint _configB) public onlyOwner {
		configB = _configB;
	}

	function setC(uint _configC) public onlyOwner {
		configC = _configC;
	}

	modifier onlyOwner {
		require(owner == msg.sender,"!onwer");		
		_;
	}
}

