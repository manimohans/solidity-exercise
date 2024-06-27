// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


/**
 * Day 3 Challenge: do the following calculations
  a. addition
  b. subtraction
  c. multiplication
  d. division
  on the app/client side, make sure ints are being passed.
 */
contract Calculator {

    modifier onlyInteger(int256 num) {
        require(num == int256(int256(num)), "Input must be an integer!");
        _; // Continue if the input is a valid integer
    }

    //event mathError(string reason);

    function add(int256 a, int256 b) public onlyInteger(a) onlyInteger(b) pure returns (int256) {
        return (a + b); 
        // input must be ints
    }

    function sub(int256 a, int256 b) public pure returns (int256) {
        return a-b;
        // there are also ways to try catch these errors
        // and return 0 or NA if applicable
    }

    function product(int256 a, int256 b) public pure returns (int256) {
        return (a * b); 
        // input must be ints
    }

    function div(int256 a, int256 b) public pure returns (int256) {
        return (a / b); 
        // input must be ints
    }
}
