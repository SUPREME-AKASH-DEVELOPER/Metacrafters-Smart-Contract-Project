# Smart-Contract-Project (for my metaceafters assignment of Functions and Errors - ETH + AVAX)


Certainly! Here's a README file for your Solidity contract:

---

# Grading System Smart Contract

This Solidity smart contract implements a simple grading system where you can add students and their grades.

## Features

- Add students along with their unique ID and name.
- Add grades for each student.
- Update grades for students.
- Retrieve student information including grades.

## Requirements

- Solidity Compiler ^0.8.10

## Usage

## Compile the contract:

Compile the Solidity contract using a Solidity compiler version ^0.8.10.

## Deploy the contract:

Deploy the compiled contract to your Ethereum development environment or testnet.

## Interact with the contract:

- Use `addStudent` to add a new student.
- Use `addGrade` to add a grade for a student.
- Use `updateGrade` to update a grade for a student.
- Use `getStudent` to retrieve student information.

## Integrate into your project:

Integrate the contract into your decentralized application (DApp) or project.

---

4. Deploy the compiled contract to your preferred Ethereum development environment or testnet.

## Contract Details

### Struct

#### Student

- **id**: Unique identifier for the student.
- **name**: Name of the student.
- **grades**: Array containing grades of the student.

### Functions

- **addStudent(uint256 id, string memory name)**: Add a new student to the system.
- **addGrade(uint256 id, uint256 grade)**: Add a grade for a specific student.
- **updateGrade(uint256 id, uint256 oldGrade, uint256 newGrade)**: Update a grade for a specific student.
- **getStudent(uint256 id) public view returns (uint256, string memory, uint256[] memory)**: Get student information including grades.

### Events

- **StudentAdded(uint256 id, string name)**: Fired when a new student is added.
- **GradeAdded(uint256 id, uint256 grade)**: Fired when a grade is added for a student.
- **GradeUpdated(uint256 id, uint256 oldGrade, uint256 newGrade)**: Fired when a grade is updated for a student.

## License

This project is licensed under the terms of the MIT license. See the [LICENSE](LICENSE) file for details.

---


https://www.loom.com/share/2768e995dc9b42e1addf0dbf50f08e7e?sid=3ff1a353-10d6-4540-a60c-bbac34807dd9
