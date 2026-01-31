// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Minter is ERC721A, Ownable {
    uint256 public constant MAX_SUPPLY = 10000;
    uint256 public constant MINT_PRICE = 0.01 ether;

    constructor() ERC721A("Minimalist NFT", "MNML") Ownable(msg.sender) {}

    function mint(uint256 quantity) external payable {
        require(totalSupply() + quantity <= MAX_SUPPLY, "Reached max supply");
        require(msg.value >= MINT_PRICE * quantity, "Insufficient funds");
        _mint(msg.sender, quantity);
    }

    function withdraw() external onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }

    function _startTokenId() internal view virtual override returns (uint256) {
        return 1;
    }
}
