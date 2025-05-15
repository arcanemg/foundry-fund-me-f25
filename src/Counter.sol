// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter {
    uint256 public count;

    // Increment the counter
    function increment() public {
        count += 1;
    }

    // Decrement the counter
    function decrement() public {
        require(count > 0, "Counter: count cannot be negative");
        count -= 1;
    }

    // Get the current count
    function getCount() public view returns (uint256) {
        return count;
    }
}
