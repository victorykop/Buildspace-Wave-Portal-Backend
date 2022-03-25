// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    constructor() {
        console.log("Hello there! I am a contract and I am smart ;)");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved just for you!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("Total waves achived : %d !", totalWaves);
        return totalWaves;
    }
}
