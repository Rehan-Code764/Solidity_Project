// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ERC-20.sol";

contract PRT is ERC20{
    constructor(uint256 initialSupply) ERC20("Proity", "PRT", initialSupply) {
    }
}
