import { ethers } from "hardhat";
import * as dotenv from "dotenv";

dotenv.config();

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts...");
  const balance = await ethers.provider.getBalance(deployer.address);
  console.log("Account balance:", ethers.formatEther(balance), "ETH");

  // Deploy VaultCore
  console.log("\nDeploying VaultCore...");
  const VaultCore = await ethers.getContractFactory("VaultCore");
  const vaultCore = await VaultCore.deploy();
  await vaultCore.waitForDeployment();
  const vaultCoreAddress = await vaultCore.getAddress();
  console.log("VaultCore deployed to:", vaultCoreAddress);

  // Summary
  console.log("\n" + "=".repeat(60));
  console.log("Deployment Summary");
  console.log("=".repeat(60));
  console.log("VaultCore :", vaultCoreAddress);
  console.log("=".repeat(60));

  // Save addresses to .env format
  console.log("\nAdd these to your .env file:");
  console.log($envVar= + vaultCoreAddress);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
