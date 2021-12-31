// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.10;

import {Ownable} from "openzeppelin-contracts/access/Ownable.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";

contract Contract is ERC20, Ownable {
    string public greeting;

    constructor(string memory _greeting) ERC20("MyToken", "MTK", 18) {
        greeting = _greeting;
    }

    function setGreeting(string calldata newGreeting) external onlyOwner {
        greeting = newGreeting;
    }
}
