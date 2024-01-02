// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IUserAuthentication.sol";

contract UserDashboardFunctions {
    IUserAuthentication public userAuthContract;

    modifier onlyRegisteredUser() {
        (bool exists, ) = userAuthContract.users(msg.sender);
        require(exists, "User not registered");
        _;
    }

    constructor(IUserAuthentication _userAuthContract) {
        userAuthContract = _userAuthContract;
    }




    function performUserAction() external onlyRegisteredUser {
        // Implement your user dashboard functions here
        // For example, update user profile, file reports, etc.
    }

    // Add more functions as needed
}
