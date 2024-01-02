// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IUserAuthentication {
    function users(address) external view returns (bool, string memory);
}