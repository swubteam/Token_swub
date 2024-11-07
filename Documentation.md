# Swub Token (SWUB) Smart Contract Documentation

**Contract Overview**
- **Name**: Swub
- **Symbol**: SWUB
- **Compiler Version**: 0.8.18
- **SPDX License Identifier**: MIT
- **Contract Address**: `0xfd904DCa552E6eb931882982eFC3b41F2962b86a`
- **Blockchain Explorer Link**: [PrismaChain Explorer](https://explorer.prismachain.io/address/0xfd904DCa552E6eb931882982eFC3b41F2962b86a/contracts#address-tabs)
- **Security Contact**: swubteam@gmail.com

## Overview
The `Swub` smart contract represents an ERC20 token for the SWUB Exchange. It includes:
- **Minting capabilities**: The owner can issue additional tokens.
- **Burning capabilities**: Holders can destroy tokens, permanently reducing the total supply.
- **Ownership**: Only the owner can mint new tokens.

This contract is based on OpenZeppelin’s libraries, ensuring security and adherence to ERC20 standards.

## Contract Modules
The contract incorporates the following OpenZeppelin modules:
1. **ERC20**: Core ERC20 token standard functions.
2. **ERC20Burnable**: Allows token holders to burn tokens.
3. **Ownable**: Restricts certain functions to the owner.

---

## Functions

### 1. Constructor: `constructor()`
- **Purpose**: Initializes the Swub token contract.
- **Details**: 
  - Sets the token’s name as `"Swub"` and symbol as `"SWUB"`.
  - Mints an initial supply of 20,000,000 SWUB tokens to the deployer’s address (the owner).
- **Modifiers**: None
- **OpenZeppelin Components**: Calls the `ERC20` constructor and `_mint` for initial supply.
```
solidity
constructor() ERC20("Swub", "SWUB") {
    _mint(msg.sender, 20000000 * 10 ** decimals());
```

### 2. Mint Function: function mint(address to, uint256 amount) public onlyOwner
- **Purpose**: Allows the owner to mint (create) new tokens.
- **Parameters**:
-- to: Recipient address for the minted tokens.
-- amount: Amount of tokens to mint, in the token’s decimal format (18 decimals).
- **Modifiers**: onlyOwner (restricts access to the owner)
- **OpenZeppelin Components**: Calls _mint to add new tokens to the recipient’s balance.

```
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```
### 3. Burn Function (Inherited from ERC20Burnable)
- **Purpose**: Allows any token holder to burn their own SWUB tokens.
- **Parameters**:
-- **amount**: Number of tokens to burn, in 18-decimal format.
- **OpenZeppelin Components**: Part of ERC20Burnable, allowing holders to reduce the total supply.

### Additional Information
- **Total Supply and Initial Allocation**: The initial supply of 20,000,000 SWUB tokens is minted to the deployer’s address upon deployment.
- **Ownership Privileges**: The owner has exclusive rights to mint additional tokens, so it's recommended to implement careful management of the owner account.
- **Security Contact**: Includes a contact email for security reporting, enabling efficient issue management.
