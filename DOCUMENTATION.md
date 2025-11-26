# PrivateVault Documentation

## Multi-Signature Wallet with FHE

PrivateVault is a multi-signature wallet where balances and transactions remain encrypted. Perfect for institutional investors requiring confidentiality.

## What It Does

- Encrypted multi-sig wallet storage
- Private transactions with encrypted amounts
- Confidential key management
- Encrypted transaction history
- Private portfolio balances
- Public decryption for audit purposes

## Getting Started

### Installation

```bash
npm install
```

### Configuration

Set up your environment variables:

```env
RPC_URL=your_rpc_url
PRIVATE_KEY=your_key
RELAYER_URL=https://relayer.testnet.zama.org
```

### Deployment

```bash
npm run deploy
```

## Project Structure

```
PrivateVault/
├── contracts/
│   ├── VaultCore.sol
│   ├── MultiSigManager.sol
│   └── TransactionHistory.sol
├── scripts/
├── tests/
└── frontend/
```

## Smart Contracts

### VaultCore

Main vault contract managing encrypted balances.

**Functions:**
- `deposit(encryptedAmount)` - Deposit encrypted funds
- `withdraw(encryptedAmount)` - Withdraw encrypted funds
- `getBalance()` - Get encrypted balance

### MultiSigManager

Manages multi-signature approvals.

**Functions:**
- `addSigner(address)` - Add signer
- `removeSigner(address)` - Remove signer
- `approveTransaction(txId)` - Approve transaction

## Technology Stack

- Zama FHEVM v0.9
- Hardhat
- React
- TypeScript

## License

MIT License


