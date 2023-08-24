// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FirstPastThePostVoting {
    struct Candidate {
        string name;
        uint256 voteCount;
    }

    address public owner;
    Candidate[] public candidates;
    mapping(address => bool) public voters;

    modifier onlyOwner() {
        require(msg.sender == owner, "You must be the owner to perform this action");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function addCandidate(string memory _name) public onlyOwner {
        candidates.push(Candidate(_name, 0));
    }

    function vote(uint256 _candidateIndex) public {
        require(!voters[msg.sender], "You have already voted");
        require(_candidateIndex < candidates.length, "Invalid candidate index");

        candidates[_candidateIndex].voteCount += 1;
        voters[msg.sender] = true;
    }

    function getWinner() public view returns (string memory winnerName, uint256 winnerVotes) {
        require(candidates.length > 0, "No candidates to determine winner");

        uint256 winningVoteCount = 0;
        uint256 winnerIndex = 0;

        for (uint256 i = 0; i < candidates.length; i++) {
            if (candidates[i].voteCount > winningVoteCount) {
                winningVoteCount = candidates[i].voteCount;
                winnerIndex = i;
            }
        }

        winnerName = candidates[winnerIndex].name;
        winnerVotes = winningVoteCount;
    }

    function getTotalCandidates() public view returns (uint256) {
        return candidates.length;
    }
}
