// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract GradingSystem {
    struct Student {
        uint256 id;
        string name;
        uint256[] grades;
    }

    mapping(uint256 => Student) public students;
    uint256 public studentCount;

    event StudentAdded(uint256 id, string name);
    event GradeAdded(uint256 id, uint256 grade);
    event GradeUpdated(uint256 id, uint256 oldGrade, uint256 newGrade);

    // Method to add a new student
    function addStudent(uint256 id, string memory name) public {
        require(id > 0, "Student ID must be positive");
        require(students[id].id == 0, "Student already exists");

        students[id] = Student(id, name, new uint256[](0));
        studentCount++;

        emit StudentAdded(id, name);
    }

    // Method to add a grade for a student
    function addGrade(uint256 id, uint256 grade) public {
        require(id > 0, "Student ID must be positive");
        require(students[id].id != 0, "Student does not exist");
        require(grade >= 0 && grade <= 100, "Grade must be between 0 and 100");

        students[id].grades.push(grade);

        emit GradeAdded(id, grade);
    }

    // Method to update a grade for a student
    function updateGrade(uint256 id, uint256 oldGrade, uint256 newGrade) public {
        require(id > 0, "Student ID must be positive");
        require(students[id].id != 0, "Student does not exist");
        require(newGrade >= 0 && newGrade <= 100, "New grade must be between 0 and 100");

        for (uint256 i = 0; i < students[id].grades.length; i++) {
            if (students[id].grades[i] == oldGrade) {
                students[id].grades[i] = newGrade;
                emit GradeUpdated(id, oldGrade, newGrade);
                return;
            }
        }

        revert("Old grade not found");
    }

    // Method to get student information including grades
    function getStudent(uint256 id) public view returns (uint256, string memory, uint256[] memory) {
        require(id > 0, "Student ID must be positive");
        require(students[id].id != 0, "Student does not exist");

        return (students[id].id, students[id].name, students[id].grades);
    }
}
