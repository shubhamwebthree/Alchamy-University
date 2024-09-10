//Use the IHero interface and the hero address passed into sendAlert to alert the hero from the Sidekick contract.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHero {
    function alert() external;
}

contract Sidekick {
    function sendAlert(address hero) external {
          IHero(hero).alert();
  }
}

