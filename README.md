# Smart-Contract-Project (for my metaceafters assignment of Functions and Errors - ETH + AVAX)

Here's the updated README file for the `ValueHandler` smart contract, incorporating the detailed description you provided:

```markdown
# ValueHandler Smart Contract

## Description

The `ValueHandler` smart contract is a Solidity-based contract designed to demonstrate the use of input validation and error handling in Ethereum smart contracts using the `require()`, `assert()`, and `revert()` statements. This project ensures robust value management and safe arithmetic operations, adhering to best practices in Solidity programming.

## Features

### updateValue Function

**Purpose**: Sets a new value for the contract.

**Input Validation**:
- Ensures the new value `newValue` is greater than zero using the `require()` statement.
- Ensures the new value is different from the existing value using the `assert()` statement.

**Events**:
- Emits a `ValueUpdated` event upon successful update of the value.

### divide Function

**Purpose**: Performs division of two numbers and returns the result.

**Input Validation**:
- Ensures the `denominator` is non-zero using the `require()` statement.
- Uses the `revert()` statement to provide a specific error message if the `numerator` is not divisible by the `denominator`.

### getCurrentValue Function

**Purpose**: Retrieves the current value stored in the contract.

## Usage

### Deploy the Contract:

Deploy the `ValueHandler` contract to an Ethereum network.

### Set a Value:

Call the `updateValue` function with a positive integer to set a new value.

### Perform Division:

Call the `divide` function with two integers where the denominator is non-zero. The function will return the result if the division is exact, otherwise, it will revert with an error message.

### Get Current Value:

Call the `getCurrentValue` function to retrieve the current value stored in the contract.

## Example

```solidity
// Set a new value
valueHandler.updateValue(10);

// Perform division
uint256 result = valueHandler.divide(20, 2); // Returns 10

// Get the current value
uint256 currentValue = valueHandler.getCurrentValue(); // Returns 10
```

## Error Handling

- **require()**: Used to check conditions that must be met before executing the function logic, preventing the function from proceeding if the condition is not met.
- **assert()**: Used to check for conditions that should always be true and indicates a serious error if the condition is not met.
- **revert()**: Used to provide specific error messages and revert the transaction if certain conditions are not met during execution.
