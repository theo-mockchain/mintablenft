// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MintableNFT is ERC721 {
    uint256 private _nextTokenId;

    uint256 public constant MAX_SUPPLY = 10000;

    constructor() ERC721("MintableNFT", "MNFT") {}

    function mint() external returns (uint256) {
        uint256 tokenId = _nextTokenId++;
        _mint(msg.sender, tokenId);
        return tokenId;
    }
}
