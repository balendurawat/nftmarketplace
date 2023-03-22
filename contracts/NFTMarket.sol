// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFTMarket is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIDs;

    constructor() public ERC721("Balendu NFT", "BNF") {}


    function createNFT(string calldata tokenURI) public returns (uint256) {
        _tokenIDs.increment();
        uint256 currentID = _tokenIDs.current();
        _safeMint(msg.sender, currentID);
        _setTokenURI(currentID, tokenURI);
        return currentID;
    }
}