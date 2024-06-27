// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


/**
 * Day 1 Challenge: Store mathematical/physics constants
 */
contract MathConstants {
    // Speed of light in m/s
    uint256 public constant SPEED_OF_LIGHT = 299792458;

    // Planck's constant in joule-seconds
    uint256 public constant PLANCKS_CONSTANT = 6626070150000000000000000; // 6.62607015e-34

    // Gravitational constant in m^3⋅kg^−1⋅s^−2
    int256 public constant GRAVITATIONAL_CONSTANT = -667430000; // -6.6743e-11

    // Pi as a rational approximation to avoid floating point imprecision
    // numerator / denominator
    uint256 public constant PI_NUMERATOR = 3141592653589793238;
    uint256 public constant PI_DENOMINATOR = 1000000000000000000; 

    // Function to calculate Pi based on the rational approximation
    function pi() public pure returns (uint256) {
        return PI_NUMERATOR / PI_DENOMINATOR;
    }

    // Function to return h
    function plancks() public pure returns (uint256) {
        return PLANCKS_CONSTANT;
    }

    // Function to return G
    function gravConst() public pure returns (int256) {
        return GRAVITATIONAL_CONSTANT;
    }

    // Function to return speed of light
    function speedOfLight() public pure returns (uint256) {
        return SPEED_OF_LIGHT;
    }
}
