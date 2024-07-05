// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

library BasicStats {
    uint256 constant SCALE_FACTOR = 1e8;

    // Mean of input integer array
    function mean(uint256[] memory arr) public pure returns (uint256, uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
        return (sum * SCALE_FACTOR / arr.length, SCALE_FACTOR);
    }

    // Median of input integer array
    function median(uint256[] memory arr) public pure returns (uint256) {
        // Sort the array (bubble sort - we can optimize with quicksort or other algorithms)
        for (uint256 i = 0; i < arr.length - 1; i++) {
            for (uint256 j = 0; j < arr.length - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    (arr[j], arr[j + 1]) = (arr[j + 1], arr[j]);
                }
            }
        }

        uint256 midIndex = arr.length / 2;
        if (arr.length % 2 == 0) {
            // Even length: average the middle two elements
            return (arr[midIndex - 1] + arr[midIndex]) / 2;
        } else {
            // Odd length: return the middle element
            return arr[midIndex];
        }
    }

    // Max of input integer array
    function maxi(uint256[] memory arr) public pure returns (uint256) {
        uint256 max = arr[0];
        for (uint256 i = 1; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }
        return max;
    }

    // Min of input integer array
    function mini(uint256[] memory arr) public pure returns (uint256) {
        uint256 min = arr[0];
        for (uint256 i = 1; i < arr.length; i++) {
            if (arr[i] < min) {
                min = arr[i];
            }
        }
        return min;
    }
}
