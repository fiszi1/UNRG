// filepath: /contracts/UNRGToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract UNRGToken is ERC20, Ownable {
    constructor() ERC20("UNRGToken", "UNRG") {
        _mint(msg.sender, 100_000_000 * 10 ** decimals());
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }
}