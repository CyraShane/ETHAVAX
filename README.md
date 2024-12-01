# SimpleToken Contract
  A simple ERC20 token contract built using OpenZeppelin libraries.

## Features
  1. **ERC20 Compliance**: Standard token functionalities like transfer and balance checks.
  2. **Minting**: Only the contract owner can mint tokens.
  3. **Burning**: Any user can burn their own tokens.

## Contract Functions
- **Constructor**: 
  - Initializes the token with the name `SimpleToken` and symbol `STK`.
  - Mints an initial supply of 100 tokens to the contract owner.

- **`mint(address to, uint256 amount)`**:
  - Mints new tokens to the specified address.
  - Restricted to the contract owner.

- **`burn(uint256 amount)`**:
  - Allows any user to burn their tokens, reducing the total supply.

## How to Use
  1. **Deploy**:
     - Compile and deploy the contract using tools like Hardhat or Remix.
  2. **Mint Tokens** (Owner Only):
     ```solidity
     mint(address to, uint256 amount);
     ```
  3. **Burn Tokens**:
     ```solidity
     burn(uint256 amount);
     ```
  4. **Transfer Tokens**:
     - Use the standard ERC20 `transfer` function.

## Notes
  - Built with OpenZeppelin’s `ERC20` and `Ownable` for security and standard compliance.
  - Initial supply: 100 tokens (scaled by `decimals()`).

## License
  Licensed under the **MIT License**.
