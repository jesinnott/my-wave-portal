// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
  mapping(address => uint256) public waveCount;
  uint256 public totalWaves;

  constructor() {
    console.log("Greetings from the blockchain!");
  }

  function wave() public {
    waveCount[msg.sender] += 1;
    totalWaves += 1;
    console.log("%s has waved %d waves!", msg.sender, waveCount[msg.sender]);
  }

  function getTotalWaves() public view returns (uint256) {
    console.log("We have %d total waves!", totalWaves);
    return totalWaves;
  }

    function getSenderWaves() public view returns (uint256) {
    console.log("%s gave %d waves!", msg.sender, waveCount[msg.sender]);
    return waveCount[msg.sender];
  }
}