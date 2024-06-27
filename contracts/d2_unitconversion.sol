// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


/**
 * Day 2 Challenge: convert following units:
  a. ft to m
  b. m to ft
  c. C to F
  d. F to C
  e. miles per hour to Km per hour
  f. km per hour to miles per hour
 */
contract unitConverter {

    // Conversion factor: 1 meter = 3.28084 feet
    uint256 private constant METERS_TO_FEET_FACTOR = 328084;
    // conversion factor: 1 kmph = 0.621371 mph
    uint256 private constant KMPH_TO_MPH = 621371;
    // solidity doesn't handle float/double and we need to be creative about this
    // in the client/app side that interacts with this smart contract

    // Function to convert meters to feet
    function convertMtrToFeet(uint256 meters) public pure returns (uint256) {
        return (meters * METERS_TO_FEET_FACTOR); // div by 100,000 on the app side
    }
    function convertFeetToMtr(uint256 feets) public pure returns (uint256) {
        return (feets / METERS_TO_FEET_FACTOR); 
        // this is not possible because division will return - useless function
    }

    function convertCtoF(uint256 c) public pure returns (uint256) {
        return ((c * 18/10) +32); 
        // this is not possible because division will return - useless function
    }

    function convertFtoC(uint256 f) public pure returns (uint256) {
        return ((f-32)*10/18); 
        // this is not possible because division will return - useless function
    }

    // Function to convert kmph to mph
    function convertKMPHtoMPH(uint256 kmph) public pure returns (uint256) {
        return (kmph * KMPH_TO_MPH); // div by 1, 000,000 on the app side
    }
    function convertMPHtoKMPH(uint256 mph) public pure returns (uint256) {
        return (mph / KMPH_TO_MPH); 
        // this is not possible because division will return - useless function
    }

}
