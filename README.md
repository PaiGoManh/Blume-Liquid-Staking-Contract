# Blume Liquid Staking

## Overview

**Blume Liquid Staking (BLS)** is a cryptocurrency liquid staking platform that allows users to stake their `BLS` tokens and receive a staked version of the tokens called `stBLS`. This platform uses **Solidity smart contracts** to manage the staking and unstaking process. When users stake their `BLS` tokens, they are issued `stBLS` tokens in return. These `stBLS` tokens can be later used to withdraw the original `BLS` tokens.

This project includes the following:
- Smart contracts written in **Solidity**.
- A **React frontend** that interacts with the Ethereum blockchain.
- **Web3.js** integration to interact with the deployed contracts.

## Key Features

1. **Stake `BLS` tokens**: Users can stake their `BLS` tokens and receive `stBLS` tokens.
2. **Unstake `BLS` tokens**: Users can burn `stBLS` tokens to get back the staked `BLS` tokens.
3. **ERC20 Tokens**: Both `BLS` and `stBLS` are ERC20 tokens, making them tradable and easily manageable via Ethereum wallets.
4. **Simple, decentralized**: Users do not need to trust any central authority; everything is managed through smart contracts.

---

## Smart Contracts

### 1. **BLSToken Contract (ERC20)**
- **Name**: Blume Liquid Staking
- **Symbol**: BLS
- **Decimals**: 18
- **Initial Supply**: 1,000,000 BLS
- This is the main ERC20 token used on the platform. Users stake this token, and the equivalent `stBLS` tokens are minted.

#### Functions:
- **constructor**: Sets the token name, symbol, and initial supply.
- **_mint**: Mint new tokens to a specified address.

### 2. **stBLSToken Contract (ERC20)**
- **Name**: Staked Blume Liquid Staking
- **Symbol**: stBLS
- **Decimals**: 18
- This token represents staked `BLS` tokens. For every `BLS` token staked, an equivalent amount of `stBLS` tokens is minted to the user's wallet.

#### Functions:
- **constructor**: Sets the token name and symbol for staked `BLS` tokens.
- **mint**: Mints new `stBLS` tokens to a specified address when a user stakes `BLS` tokens.
- **burn**: Burns `stBLS` tokens when a user wants to unstake their tokens.

### 3. **BlumeLiquidStaking Contract**
- This contract manages the staking and unstaking processes. Users can stake `BLS` tokens to mint `stBLS` tokens, and they can burn `stBLS` tokens to unstake `BLS` tokens.

#### Functions:
- **constructor**: Accepts the addresses of the `BLS` and `stBLS` token contracts and sets them for interaction.
- **stake**: Transfers `BLS` tokens from the user to the contract and mints the same amount of `stBLS` tokens to the user.
- **unstake**: Burns `stBLS` tokens from the user and transfers the equivalent amount of `BLS` tokens back to the user.


# Acknowledgments

- **OpenZeppelin**: For their well-tested and secure ERC20 contracts.
- **Ethereum Community**: For building and maintaining the Ethereum blockchain and its tools.


# License

This project is licensed under the MIT License. See the LICENSE file for details.

# Contributing

If you'd like to contribute to this project, feel free to fork this repository, make changes, and submit a pull request. We welcome improvements and bug fixes!
