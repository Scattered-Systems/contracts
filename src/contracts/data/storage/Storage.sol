// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


struct Data {
    address id;
    string key;
    string[] values;
}

struct Container {
    address owner;
    mapping(string => mapping(string => Data)) content;
}


contract Storage {
    address public deployed;
    mapping(address => Container[]) containers;


    function get(address _addr) pure external returns(address) {
        return _addr;
    }
}