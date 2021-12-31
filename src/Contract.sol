// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.10;

import {Ownable} from "openzeppelin-contracts/access/Ownable.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";

import "hardhat/console.sol";

contract Contract is ERC20, Ownable {
    string public greeting;

    constructor() ERC20("MyToken", "MTK", 18) {
        greeting = "Happy new year!";
    }

    function setGreeting(string calldata newGreeting) external onlyOwner {
        console.log(newGreeting);
        greeting = newGreeting;
    }
}
