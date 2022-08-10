// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Animal {
    function speak() public virtual returns (string memory) {}
}

contract Dog is Animal {
    string private noise = "woof";

    function speak() public pure override returns (string memory) {
        return "woof!";
    }
}
