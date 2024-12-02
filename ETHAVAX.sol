pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; // Import ERC20 standard implementation
import "@openzeppelin/contracts/access/Ownable.sol"; // Import Ownable contract to manage ownership

contract SimpleToken is ERC20, Ownable {
    constructor() ERC20("SimpleToken", "STK") {
        _mint(msg.sender, 100 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner {
        require(amount > 0, "Mint amount must be greater than zero");
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        require(amount > 0, "Burn amount must be greater than zero");
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        return super.transfer(to, amount);
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        return super.transferFrom(from, to, amount);
    }
}
