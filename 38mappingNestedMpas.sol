//Create a public mapping called connections which will map an address to a mapping of an address to a ConnectionTypes enum value.
//In theconnectWith function, create a connection from the msg.sender to the other address.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	enum ConnectionTypes { 
		Unacquainted,
		Friend,
		Family
	}
	
	mapping (address => mapping (address => ConnectionTypes)) public connections;

	function connectWith(address other, ConnectionTypes connectionType) external {
        // TODO: make the connection from msg.sender => other => connectionType
	connections[msg.sender][other] = connectionType;

	}
}
