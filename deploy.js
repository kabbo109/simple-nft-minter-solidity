const hre = require("hardhat");

async function main() {
  const Minter = await hre.ethers.getContractFactory("Minter");
  const minter = await Minter.deploy();

  await minter.waitForDeployment();

  console.log(`NFT Contract deployed to: ${await minter.getAddress()}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
