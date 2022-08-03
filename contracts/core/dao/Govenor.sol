// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


struct Voter {
    address delegate;
    uint vote;
    bool voted;
}

struct Candidate {
    address id;
    bool winner;
}

contract Govenor {
    address public leader;
    mapping(address => Voter) public voters;

    constructor() {
        leader = msg.sender;
    }
}