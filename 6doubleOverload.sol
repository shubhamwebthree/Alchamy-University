//Create another pure external function double which takes two uint parameters.
//Double both of the arguments and return both of them in the same order they were passed into the function.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
function double(uint _x) external pure returns(uint doubled){
       return doubled = _x * 2;
}
function double(uint _x,uint _y) external pure returns(uint, uint){
       return (_x * 2, _y * 2);
}
}
