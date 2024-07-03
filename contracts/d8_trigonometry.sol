// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/*
There are some errors when degree = 180 or sometimes 90. To keep going with the challenge, committing the code
with the errors.
Use at your own risk.
@notice Trigonometric functions
@dev Trigonometric functions sine, cosine and tangent - takes degrees as input and returns the trig values
 */

library TrigFunctions {
    int256 constant SCALE_FACTOR = 1e18; // Larger scaling factor
    int256 constant PI = 3141592653589793238; // Pi scaled up

    function sin(int256 degrees) public pure returns (int256) {
        int256 radians = (degrees * PI) / 180; 

        // Optimized angle reduction using modulo
        radians = radians % (2 * PI);
        if (radians > PI) {
            radians -= 2 * PI;
        }

        // Taylor series approximation with gas optimizations
        int256 x = radians;
        int256 xSquared = (x * x) / SCALE_FACTOR;
        int256 term = x;
        int256 result = x;
        for (int256 i = 1; i < 5; i++) { // Using int256 for i
            int256 factorialTerm = 2 * i * (2 * i + 1); // Keep it int256
            term = (-term * xSquared) / (factorialTerm * SCALE_FACTOR);
            result += term;
        }

        return result;
    }

    function cos(int256 degrees) public pure returns (int256) {
        // Cosine is just the sine shifted by pi/2 radians (90 degrees)
        return sin(degrees + 90); 
    }

    function tan(int256 degrees) public pure returns (int256) {
        int256 sinValue = sin(degrees);
        int256 cosValue = cos(degrees);

        // Avoid division by zero for angles where cosine is zero
        require(cosValue != 0, "Tangent undefined for this angle"); 

        return (sinValue * SCALE_FACTOR) / cosValue;
    }

    function abs(int256 x) private pure returns (uint256) {
        return x >= 0 ? uint256(x) : uint256(-x);
    }
}
