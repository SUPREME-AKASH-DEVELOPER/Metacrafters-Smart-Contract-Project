// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValueHandler {
    uint256 private currentValue;

    event ValueUpdated(uint256 updatedValue);

    // Method to update the current value
    function updateValue(uint256 newValue) public {
        // Validate input: newValue must be greater than zero
        require(newValue > 0, "Value must be positive");

        // Ensure the new value differs from the current value
        assert(newValue != currentValue);

        currentValue = newValue;

        emit ValueUpdated(newValue);
    }

    // Method to divide two numbers
    function divide(uint256 numerator, uint256 denominator) public pure returns (uint256) {
        // Validate input: denominator must not be zero
        require(denominator != 0, "Cannot divide by zero");

        // Ensure the division is exact
        if (numerator % denominator != 0) {
            revert("Numerator is not evenly divisible by denominator");
        }

        return numerator / denominator;
    }

    // Method to retrieve the current value
    function getCurrentValue() public view returns (uint256) {
        return currentValue;
    }
}
