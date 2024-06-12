// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    address public owner;
    uint public proposalCount;

    struct Proposal {
        uint id;
        string description;
        uint voteCount;
    }

    mapping(uint => Proposal) public proposals;
    mapping(address => mapping(uint => bool)) public votes;

    event ProposalCreated(uint indexed id, string description);
    event Voted(uint indexed proposalId, address indexed voter);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Function to create a new proposal
    function createProposal(string memory description) public onlyOwner {
        proposalCount++;
        proposals[proposalCount] = Proposal(proposalCount, description, 0);
        emit ProposalCreated(proposalCount, description);
    }

    // Function to vote on a proposal
    function vote(uint proposalId) public {
        require(proposalId > 0 && proposalId <= proposalCount, "Proposal does not exist");
        require(!votes[msg.sender][proposalId], "You have already voted for this proposal");

        votes[msg.sender][proposalId] = true;
        proposals[proposalId].voteCount++;
        emit Voted(proposalId, msg.sender);
    }

    // Function to get proposal details
    function getProposal(uint proposalId) public view returns (uint, string memory, uint) {
        require(proposalId > 0 && proposalId <= proposalCount, "Proposal does not exist");

        Proposal memory proposal = proposals[proposalId];
        return (proposal.id, proposal.description, proposal.voteCount);
    }
}
