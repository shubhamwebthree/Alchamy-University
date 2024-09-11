//The data location for this array is memory. Memory is temporary, it will only last as long as the transaction. The other data locations are calldata for referring to message call arguments and storage for persistence

//Create a pure, external function sum which takes a fixed size array of five unsigned integers.
//Find the sum of the unsigned integers and return it as a uint.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    
function sum (uint[5] memory numbers) external pure returns(uint){
    uint total = 0;
    for(uint i = 0;i<numbers.length;i++){
        total+=numbers[i];
    }
    return total;
}
}
