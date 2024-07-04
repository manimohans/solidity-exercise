// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

library PhysicsLib {
    uint256 constant SCALE_FACTOR = 1e8;

    // Force (Newton's second law)
    function calculateForce(uint256 mass, uint256 acceleration) public pure returns (uint256, uint256) {
        return ((mass * acceleration), 1);
    }

    // Work (force x distance)
    function calculateWork(uint256 force, uint256 distance) public pure returns (uint256, uint256) {
        return ((force * distance), 1);
    }

    // Kinetic Energy (1/2 * mass * velocity^2)
    function calculateKineticEnergy(uint256 mass, uint256 velocity) public pure returns (uint256, uint256) {
        return ((mass * velocity * velocity * SCALE_FACTOR / 2), SCALE_FACTOR);
    }

    // Potential Energy (mass * gravity * height)
    function calculatePotentialEnergy(uint256 mass, uint256 height) public pure returns (uint256, uint256) {
        uint256 gravity = 98 * SCALE_FACTOR / 10; 
        return ((mass * gravity * height), SCALE_FACTOR);
    }

    // Momentum (mass * velocity)
    function calculateMomentum(uint256 mass, uint256 velocity) public pure returns (uint256, uint256) {
        return ((mass * velocity), 1);
    }
}
