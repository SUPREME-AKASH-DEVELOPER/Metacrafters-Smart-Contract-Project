// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    address public owner;
    mapping(address => uint) private balances;
    uint public withdrawalLimit;

    event Deposit(address indexed user, uint amount);
    event Withdrawal(address indexed user, uint amount);
    event LimitChanged(uint newLimit);

    constructor() {
        owner = msg.sender;
        withdrawalLimit = 1 ether;
    }

    // Deposit function
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    // Withdraw function
    function withdraw(uint amount) public {
        require(amount > 0, "Withdrawal amount must be greater than zero");
        require(amount <= balances[msg.sender], "Insufficient balance");
        require(amount <= withdrawalLimit, "Amount exceeds withdrawal limit");

        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawal(msg.sender, amount);
    }

    // Set withdrawal limit function, only owner can call
    function setWithdrawalLimit(uint newLimit) public {
        require(msg.sender == owner, "Only owner can set the withdrawal limit");

        withdrawalLimit = newLimit;
        emit LimitChanged(newLimit);
    }

    // Function to check balance
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    // Function to simulate an error and test assert()
    function testAssert() public view {
        // Assert that the contract owner is not the zero address (should never fail)
        assert(owner != address(0));
    }

    // Function to demonstrate revert
    function demoRevert() public pure {
        // Always revert with a custom error message
        revert("This function always reverts");
    }
}
