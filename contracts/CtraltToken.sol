// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CtraltToken is ERC20 {
    constructor() ERC20("ctralt", "CTRALT") {
        // Създава 1,000,000 токена и ги праща директно в твоя портфейл
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
