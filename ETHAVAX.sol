pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleToken is ERC20, Ownable {
    constructor() ERC20("SimpleToken", "STK") Ownable(msg.sender) {
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

    function transfer(address to, uint256 amount) public override returns (bool success) {
        require(to != address(0), "Transfer to the zero address is not allowed");
        success = super.transfer(to, amount);
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool success) {
        require(to != address(0), "Transfer to the zero address is not allowed");
        success = super.transferFrom(from, to, amount);
    }
}
