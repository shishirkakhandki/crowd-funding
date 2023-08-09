// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        // Mint 100 tokens to msg.sender
        // Similar to how
        // 1 dollar = 100 cents
        // 1 token = 1 * (10 ** decimals)
        _mint(msg.sender, 10000 * 10 ** uint(decimals()));

        // owner - 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        // token - 0xd9145CCE52D386f254917e481eB44e9943F39138
        // crowd fund contract - 0xa131AD247055FD2e2aA8b156A11bdEc81b9eAD95
        // crowd fund owner - 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    }
}
