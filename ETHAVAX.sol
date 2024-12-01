pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; // Import ERC20 standard implementation
import "@openzeppelin/contracts/access/Ownable.sol"; // Import Ownable contract to manage ownership

contract SimpleToken is ERC20, Ownable {
    // Constructor to initialize the token with name and symbol, and mint initial supply to the owner
    constructor() ERC20("SimpleToken", "STK") Ownable(msg.sender) {
        _mint(msg.sender, 100 * 10 ** decimals()); // Mint 100 tokens (adjusted for decimals) to the deployer's address
    }

    // Function to allow the owner to mint new tokens and send them to a specified address
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount); // Mint specified amount of tokens to the address
    }

    // Function to allow any user to burn their own tokens (reduce total supply)
    function burn(uint256 amount) external {
        _burn(msg.sender, amount); // Burn specified amount of tokens from sender's balance
    }
}
