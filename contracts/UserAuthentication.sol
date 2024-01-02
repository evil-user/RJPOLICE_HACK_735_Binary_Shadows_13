// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserAuthentication {
    struct User {
        bool exists;
        string username;
    }

    mapping(address => User) public users;

    event UserLoggedIn(address indexed user);

    modifier onlyRegisteredUser() {
        require(users[msg.sender].exists, "User not registered");
        _;
    }

    function loginWithMetaMask() external {
        require(!users[msg.sender].exists, "User already registered");
        
        // You might want to perform additional checks or actions specific to MetaMask login here
        
        users[msg.sender] = User(true, "MetaMask User");
        emit UserLoggedIn(msg.sender);
    }
}
