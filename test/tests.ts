import { expect } from "chai";
import { ethers } from "hardhat";

describe("NFTMarket", () => {
  it("Should do something", async () => {
    const NFTMarket = await ethers.getContractFactory('NFTMarket');
    const nftMarket = await NFTMarket.deploy();
    await nftMarket.deployed();

    const tokenURI = 'https://some-token.uri/';
    const transaction = await nftMarket.createNFT(tokenURI);
    console.log(transaction);
    const receipt = await transaction.wait();

    const tokenID = receipt.events[0].args.tokenId;

    
  });
});

