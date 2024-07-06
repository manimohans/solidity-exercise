// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract IdealGasLaw {
    uint256 constant SCALE_FACTOR = 1e18;

    // function to calculate pressure, given volume, number of moles and temperature
    function pressureCalc(uint256 volume, uint256 moles, uint256 temperature) public pure returns (uint256, uint256) {
        return (moles * 8314 * temperature / volume, 1000);
    }

    // function to calculate volume, given pressure, number of moles and temperature
    function volumeCalc(uint256 pressure, uint256 moles, uint256 temperature) public pure returns (uint256, uint256) {
        return (moles * 8314 * temperature / pressure, 1000);
    }

    // function to calculate moles, given pressure, volume and temperature
    function molesCalc(uint256 pressure, uint256 volume, uint256 temperature) public pure returns (uint256, uint256) {
        return (pressure * volume / 8314 / temperature, 1000);
    }

    // function to calculate temperature, given pressure, volume and moles
    function temperatureCalc(uint256 pressure, uint256 volume, uint256 moles) public pure returns (uint256, uint256) {
        return (pressure * volume / 8314 / moles, 1000);
    }
}