// SPDX-License-Identifier: MIT
// Toke of SWUB Exchange
// pragma solidity ^0.8.18; opt 5000
// address: 0xfd904DCa552E6eb931882982eFC3b41F2962b86a
// Link: https://explorer.prismachain.io/address/0xfd904DCa552E6eb931882982eFC3b41F2962b86a/contracts#address-tabs

pragma solidity ^0.8.18;

// Importing OpenZeppelin ERC20, ERC20Burnable, and Ownable contracts
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.6.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.6.0/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.6.0/contracts/access/Ownable.sol";

/// @title Swub Token Contract (SWUB)
/// @notice This contract implements a mintable and burnable ERC20 token for the SWUB Exchange.
/// @dev This contract leverages OpenZeppelin’s ERC20, ERC20Burnable, and Ownable contracts for security and functionality.
/// @custom:security-contact swubteam@gmail.com
contract Swub is ERC20, ERC20Burnable, Ownable {

    /// @notice Constructor to deploy the SWUB token contract
    /// @dev Sets the token name and symbol, and mints an initial supply of 20,000,000 SWUB tokens to the contract deployer.
    ///      Uses the ERC20 constructor for initialization and the OpenZeppelin `_mint` function for minting.
    /// @param Initial supply: 20,000,000 tokens with 18 decimal places.
    constructor() ERC20("Swub", "SWUB") {
        // Minting the initial supply to the deployer’s address
        _mint(msg.sender, 20000000 * 10 ** decimals());
    }

    /// @notice Mint new SWUB tokens
    /// @dev This function allows only the contract owner to mint new tokens. It calls `_mint` from OpenZeppelin’s ERC20 implementation.
    /// @param to The address that will receive the newly minted tokens.
    /// @param amount The number of tokens to mint (with 18 decimals).
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
