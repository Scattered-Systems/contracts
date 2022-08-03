//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

/*
 * @title Owner
 * @dev
 */
contract Owner {
    address private owner;

    event SetOwner(address indexed Client, address indexed Vendor);

    modifier isOwner() {
        require(msg.sender == owner, "Access Error: Caller is not registered as the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
        emit SetOwner(address(0), owner);
    }

    function transfer(address recipient) public isOwner {
        emit SetOwner(recipient, owner);
        owner = recipient;
    }

    function getOwner() external view returns(address) {
        return owner;
    }
}