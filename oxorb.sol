// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ZeroXOrb is ERC20 {
    constructor() ERC20("0xorb", "0XORB") {
        // Mint 100 million tokens to the deployer
        // ERC20 uses 18 decimals by default, so we multiply by 10^18
        _mint(msg.sender, 100_000_000 * 10**decimals());
    }
}
