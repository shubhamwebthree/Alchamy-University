//Create a public, dynamic sized array of unsigned integers as a state variable called evenNumbers.
//Create an external function called filterEven which takes an dynamic size array of unsigned integers as its only argument. Find all of the even numbers in this array and push them into the evenNumbers storage array.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {

uint[] public evenNumbers;

function filterEven(uint[] calldata numbers) external {
    for(uint i = 0; i<numbers.length;i++){
    if(numbers[i]%2==0){
        evenNumbers.push(numbers[i]);
    }        
    }
}

}
