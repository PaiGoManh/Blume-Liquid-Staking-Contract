# 🌿 Blume Liquid Staking (BLS)

Blume Liquid Staking (**BLS**) is a decentralized platform that allows users to stake `BLS` tokens and earn a staked version of the tokens, `stBLS`. This innovative solution uses **Solidity smart contracts** to provide a secure and efficient staking experience, enabling users to participate in liquid staking and retain the flexibility of their assets.

## ✨ Features

- 🔒 **Stake `BLS` Tokens**: Stake your `BLS` tokens to earn `stBLS` tokens as proof of stake.
- 🔄 **Unstake `BLS` Tokens**: Burn your `stBLS` tokens to withdraw your original `BLS` tokens.
- 💼 **ERC20 Compliance**: Both `BLS` and `stBLS` tokens adhere to the ERC20 standard for seamless wallet integration.
- ⚙️ **Smart Contract Security**: All operations are managed through decentralized and secure Solidity smart contracts.
- 🌐 **React Frontend**: An intuitive React-based frontend for user interactions.
- 🤝 **Web3.js Integration**: Simplified interaction with Ethereum contracts.

---

## 🔐 Smart Contracts

### 1. **BLSToken Contract** (`BLS`)
- **Token Name**: Blume Liquid Staking
- **Symbol**: `BLS`
- **Decimals**: 18
- **Initial Supply**: 1,000,000 `BLS`
  
This ERC20 token is the primary asset of the platform. Users stake `BLS` to mint `stBLS`.

### 2. **stBLSToken Contract** (`stBLS`)
- **Token Name**: Staked Blume Liquid Staking
- **Symbol**: `stBLS`
- **Decimals**: 18
  
The staked version of the `BLS` token. It is minted when users stake and burned when they unstake.

### 3. **BlumeLiquidStaking Contract**
Manages the staking and unstaking of tokens, ensuring secure operations.  
Key functions include:  
- 📥 **Stake**: Transfers `BLS` tokens from users and mints `stBLS`.  
- 📤 **Unstake**: Burns `stBLS` and returns equivalent `BLS` tokens.  

---

## 🔍Explore Deployed Contracts 

- **BLSToken Contract**: [View on Etherscan](https://sepolia.etherscan.io/address/0x758C96cF0dfA419D0bdD863724A322e02b034621)  
- **stBLSToken Contract**: [View on Etherscan](https://sepolia.etherscan.io/address/0xB9a2D2FB4726f585BFF08A6fbf6494D3D3dC13C8)  
- **BlumeLiquidStaking Contract**: [View on Etherscan](https://sepolia.etherscan.io/address/0x9CF0dc014d25292Aae0a649870Bb777b79A28d6b)  

---

## 🚀 Setup & Installation

1. Clone the repository:  
   ```bash
   git clone https://github.com/your-repo/blume-liquid-staking.git
   ```

2. Install dependencies:  
   ```bash
   npm install
   ```

3. Compile smart contracts:  
   ```bash
   npx hardhat compile
   ```

4. Deploy contracts:  
   ```bash
   npx hardhat run scripts/deploy.js --network your-network
   ```

5. Search the deployed contracts in Sepolia Etherscan (im using Sepolia Testnet for Deploying )

---

## 🔧 Environment Setup

Create a `.env` file with the following variables:
```
PRIVATE_KEY=your_private_key
INFURA_PROJECT_ID=your_infura_project_id
```

---

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## 🤝 Contributing

We welcome contributions to improve Blume Liquid Staking. To contribute:
1. 🍴 Fork the repository.
2. 🌿 Create a feature branch.
3. 💾 Commit your changes.
4. 🚀 Push to the branch.
5. 📬 Submit a pull request.

---

## 🛠 Acknowledgments

- **OpenZeppelin**: For secure and well-tested smart contract templates.
- **Ethereum Community**: For building and maintaining the Ethereum blockchain and its tools.

---
