// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Quadraticeqn {

    function solveQuadEqn(int256 a, int256 b, int256 c) public pure returns (int256, int256) {
        /*The issue "Function state mutability can be restricted to pure" in Solidity arises 
        because the solveQuadEqn function is defined as public, 
        which implies that it can modify the contract's state. However, 
        the function does not change the state of the contract. 
        To resolve this issue, you can update the function to be public pure instead of just public. 
        This change indicates that the function does not modify the contract's state. */
        uint256 discriminant;
        int256 root1;
        int256 root2;
        discriminant = uint256(b*b - (4*a*c));
        root1 = (-b + int256(sqrt(discriminant))) / (2*a);
        root2 = (-b - int256(sqrt(discriminant))) / (2*a);
        return (root1, root2);
    }

    function sqrt(uint256 x) public pure returns (uint256) {
        // binary search method - approximates to lower range number 
        if (x == 0) return 0;
        uint256 z = x / 2 + 1;
        uint256 y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
        return y;
    }


    function absDiff(uint256 a, uint256 b) private pure returns (uint256) {
        return a > b ? a - b : b - a;
    }
}
