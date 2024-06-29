// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract ScientificNotation {
    /**
     * @notice Converts a given unsigned integer to its scientific notation representation.
     * @param num The unsigned integer to convert.
     * @return result A string representing the scientific notation of 'num'.
     * @dev 
     * - Scientific notation is of the form "CeD", where C is the coefficient and D is the magnitude (exponent).
     * - The coefficient is always a single digit integer (1-9) in this case for simplicity and limitations of solidity.
     * - The magnitude indicates the power of 10 to multiply the coefficient by.
     * - Zero is represented as "0".
     */

    function toScientificNotation( uint256 num ) public pure returns (string memory) {
        if (num == 0) return "0"; // Handle the zero case

        // Efficiently determine magnitude (exponent)
        uint8 magnitude = 0;
        while (num >= 10) {
            magnitude++;
            num /= 10;
        }

        // Construct the result string directly
        bytes memory result = new bytes(20); // Allocate ample space
        uint256 index = 0;
        result[index++] = bytes1(uint8(48 + num)); // Convert coefficient to ASCII
        result[index++] = "e"; // Add the exponent symbol 'e'
        if (magnitude >= 10) {
            result[index++] = bytes1(uint8(48 + magnitude / 10));
        }
        result[index++] = bytes1(uint8(48 + (magnitude % 10)));

        return string(result); // Return the entire bytes array as a string
    }
}

/* create documentation for the above code

 */
