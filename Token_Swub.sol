// SPDX-License-Identifier: MIT
// Toke of SWUB Exchange
// pragma solidity ^0.8.18; opt 5000
// address: 0xfd904DCa552E6eb931882982eFC3b41F2962b86a
// Link: https://explorer.prismachain.io/address/0xfd904DCa552E6eb931882982eFC3b41F2962b86a/contracts#address-tabs

pragma solidity ^0.8.18;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.6.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.6.0/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.6.0/contracts/access/Ownable.sol";

/// @custom:security-contact swubteam@gmail.com
contract Swub is ERC20, ERC20Burnable, Ownable {
    constructor()
        ERC20("Swub", "SWUB")
    {
        _mint(msg.sender, 20000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
