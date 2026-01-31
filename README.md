# Simple NFT Minter (ERC-721A)

This repository contains a professional implementation of an NFT Smart Contract using the **ERC-721A** standard, which significantly reduces gas costs for batch minting.

## Architecture
The project follows a flat structure for maximum clarity. It includes the core contract, deployment configurations, and a testing script to simulate a minting event.



## Quick Start
1. **Install Dependencies**: `npm install`
2. **Compile**: `npx hardhat compile`
3. **Deploy**: Update `hardhat.config.js` with your RPC URL and run the deploy script.

## Features
* **ERC-721A**: Efficient batch minting.
* **Ownable**: Secure administrative functions (withdraw funds, set base URI).
* **Hardhat Ready**: Pre-configured for local and testnet deployment.
