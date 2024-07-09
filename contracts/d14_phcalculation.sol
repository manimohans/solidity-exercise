// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

//there is no log function in solidity and i had to use taylor series approximation
// very challenging beyond this point, without having math functions and no floating points

library PHCalculator {
    int256 constant SCALE_FACTOR = 1e18;  // Scaling factor for fixed-point

    // Approximate log10 using a Taylor series expansion around x=1
    function log10Approx(int256 x) private pure returns (int256) {
        require(x > 0, "Input must be positive");
        x = x * SCALE_FACTOR;  // Scale up to fixed-point

        int256 z = (x - SCALE_FACTOR) / SCALE_FACTOR;
        int256 zSquared = (z * z) / SCALE_FACTOR;
        int256 result = z;

        // Iterate through terms of Taylor series
        for (uint8 i = 1; i <= 5; i++) {  // Adjust number of terms for accuracy
            int256 term = int256((-1)**(i + 1)) * int256(z**(i + 1)) / int256(uint256(i + 1));
            result = result + term;
            z = zSquared; // Optimize by calculating z^n incrementally
        }
        return result / 2302585093;  // 1 / ln(10) scaled up for fixed-point
    }

    function calculatePH(int256 hPlusConcentration) public pure returns (int256) {
        require(hPlusConcentration > 0, "Concentration must be positive");
        return -log10Approx(hPlusConcentration); 
    }
}
