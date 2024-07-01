// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract VectorOperations {
    /*
     * @title VectorOperations
     * @dev A smart contract for vector operations - add, subtract, scale
    */

    /* addition of vectors */
    function addVec2D(uint256 i1, uint256 i2, uint256 j1, uint256 j2) public pure returns (uint256, uint256) {
        return (i1 + i2, j1 + j2);
    }

    /* subtraction of vectors */
    function subVec2D(uint256 i1, uint256 i2, uint256 j1, uint256 j2) public pure returns (uint256, uint256) {
        return (i1 - i2, j1 - j2);
    }

    /* scaling of vectors */
    function scaleVec2D(uint256 i1, uint256 j1, uint256 scale) public pure returns (uint256, uint256) {
        return (i1 * scale, j1 * scale);
    }

    /* dot product of vectors */
    function dotVec2D(uint256 i1, uint256 i2, uint256 j1, uint256 j2) public pure returns (uint256) {
        return (i1 * i2) + (j1 * j2);
    }

    /* cross product of vectors */
    function crossVec2D(uint256 i1, uint256 i2, uint256 j1, uint256 j2) public pure returns (uint256) {
        return (i1 * j2) - (i2 * j1);
    }    

}

