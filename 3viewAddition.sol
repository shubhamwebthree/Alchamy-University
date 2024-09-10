//Create an external view function add which takes a uint parameter and returns the sum of the parameter plus the state variable x.



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

function add(uint256 _y) external view returns (uint256) {
    return x + _y;
}
}
