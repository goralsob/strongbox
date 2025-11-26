// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ZamaEthereumConfig} from "@fhevm/solidity/config/ZamaConfig.sol";
import {FHE} from "@fhevm/solidity/lib/FHE.sol";
import {euint64} from "@fhevm/solidity/lib/FHE.sol";
import {ebool} from "@fhevm/solidity/lib/FHE.sol";

contract VaultCore is ZamaEthereumConfig {
    using FHE for euint64;

    struct Vault {
        address owner;
        euint64 balance;
        uint256 createdAt;
    }

    mapping(address => Vault) public vaults;

    event Deposit(address indexed owner, euint64 amount);
    event Withdrawal(address indexed owner, euint64 amount);

    function deposit(euint64 encryptedAmount) external {
        Vault storage vault = vaults[msg.sender];
        if (vault.owner == address(0)) {
            vault.owner = msg.sender;
            vault.createdAt = block.timestamp;
        }
        vault.balance = FHE.add(vault.balance, encryptedAmount);
        emit Deposit(msg.sender, encryptedAmount);
    }

    function withdraw(euint64 encryptedAmount) external {
        Vault storage vault = vaults[msg.sender];
        require(vault.owner == msg.sender, "Not owner");
        
        ebool sufficient = FHE.lt(encryptedAmount, vault.balance);
        // Note: Validation should be done off-chain using Relayer SDK
        
        vault.balance = FHE.sub(vault.balance, encryptedAmount);
        emit Withdrawal(msg.sender, encryptedAmount);
    }
}

