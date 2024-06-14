# Smart-Contract-Project (for my metaceafters assignment of Functions and Errors - ETH + AVAX)



Sure, here's a condensed version:

---

# Smart Contract Project

This project implements a simple Solidity smart contract showcasing the usage of `require()`, `assert()`, and `revert()` statements.

## Overview

The `ValueHandler` contract allows:
- Updating a stored value with validation.
- Performing division with input checks.
- Retrieving the current stored value.

## Usage

1. **updateValue(uint256 newValue)**:
   - Updates the stored value.
   - Uses `require()` to ensure `newValue` is positive.
   - Uses `assert()` to ensure the new value is different from the current value.

2. **divide(uint256 numerator, uint256 denominator)**:
   - Returns the result of division.
   - Uses `require()` to ensure `denominator` is not zero.
   - Uses `revert()` if `numerator` is not evenly divisible by `denominator`.

3. **getCurrentValue()**:
   - Retrieves the current stored value.

## How to Use

1. Clone the repository.
2. Deploy the contract.
3. Interact with the contract using a web3 provider like MetaMask.

## License

This project is licensed under the MIT License.

---

