// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract AreaAndPerimeter {
    /*
     * @title AreaAndPerimeter
     * @dev A smart contract for calculating the area and perimeter of squares, rectangles, and circles.
    */

    /* area of square */
    function areaOfSquare(uint256 a) public pure returns (uint256) {
        return a * a;
    }

    /* perimeter of square */
    function perimeterOfSquare(uint256 a) public pure returns (uint256) {
        return 4 * a;
    }

    /* area of rectangle */
    function areaOfRectangle(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    /* perimeter of rectangle */
    function perimeterOfRectangle(uint256 a, uint256 b) public pure returns (uint256) {
        return 2 * (a + b);
    }

    /* area of circle , use 314 for pi and 100 as multiplier, return both values */
    function areaOfCircle(uint256 r) public pure returns (uint256, uint256) {
        uint256 pi = 314;
        uint256 area = pi * r * r;
        uint256 multiplier = 100;
        return (area, multiplier);
    }

    /* perimeter of circle , use 314 for pi and 100 as multiplier, return both values */
    function perimeterOfCircle(uint256 r) public pure returns (uint256, uint256) {
        uint256 pi = 314;
        uint256 perimeter = 2 * pi * r;
        uint256 multiplier = 100;
        return (perimeter, multiplier);
    }

}

