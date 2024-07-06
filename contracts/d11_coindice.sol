// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract CoinDice {

    function flipCoin() external view returns (bool) {
        uint256 randomNumber = uint256(
            keccak256(abi.encodePacked(blockhash(block.number - 1), block.timestamp, msg.sender))
        );
        return randomNumber % 2 == 0;
    }

    function rollDice() external view returns (uint8) {
        uint8 numSides = 6;
        require(numSides > 1, "Number of sides must be greater than 1");
        uint256 randomNumber = uint256(
            keccak256(abi.encodePacked(blockhash(block.number - 1), block.timestamp, msg.sender))
        );
        return uint8(randomNumber % numSides) + 1;
    }
}