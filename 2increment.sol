
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

uint256 public x = 1 ;

constructor(uint256 _x){
    x = _x;
}

function increment() external {
        x++;
}
}
