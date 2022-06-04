//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


contract Oracle {
    address private owner;
    mapping(string => mapping(string => bytes32[])) private content;
}