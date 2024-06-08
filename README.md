# Smart-Contract-Project

# SimpleBank Smart Contract

SimpleBank is a basic Ethereum smart contract that acts as a simple bank account on the blockchain. It allows users to deposit and withdraw Ether, and the contract owner can set a withdrawal limit.

## Functions

- **Deposit**: Users can deposit Ether into their account.
- **Withdraw**: Users can withdraw Ether from their account, respecting their balance and withdrawal limit.
- **Set Withdrawal Limit**: Contract owner can set a maximum withdrawal limit.

## Key Concepts

- **require()**: Checks conditions before allowing a transaction.
- **assert()**: Ensures critical conditions are always true.
- **revert()**: Cancels a transaction with a custom message.

## How to Run

### Using Remix IDE:

1. Open Remix IDE: Go to [Remix IDE](https://remix.ethereum.org).
2. Create New File: Name it `SimpleBank.sol` and paste the contract code.
3. Compile & Deploy: Use JavaScript VM (Cancun) environment.
4. Interact: Deposit, withdraw, set limits, and check balance.

## Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    // Contract variables and functions
    // Insert the contract code here

    // Contact author's email: akashlakhwan2329@gmail.com
}
# Conclusion
This project demonstrates how to handle conditions and errors in Solidity smart contracts using require(), assert(), and revert(). By implementing these functions, we ensure our contract operates securely and predictably.
