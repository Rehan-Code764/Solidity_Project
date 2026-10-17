# Solidity Projects 🚀

Welcome to my Solidity Projects Repository! This repository contains my hands-on smart contract projects built while learning **Solidity, Smart Contract Development, and Blockchain Technology**.

My goal is to strengthen my blockchain development skills by building practical projects and understanding how smart contracts work on Ethereum-compatible networks.

## 👨‍💻 About Me

I am a Computer Engineering diploma student learning Blockchain Development and Web3 technologies. I enjoy building smart contracts and exploring decentralized applications (dApps).

- **GitHub:** [Rehan-Code764](https://github.com/Rehan-Code764)
- **Focus:** Solidity, Smart Contracts, Blockchain Development
- **Tools:** Remix IDE, MetaMask, Git, GitHub
- **Network for Testing:** Ethereum Sepolia Testnet

## 📂 Projects

### 1. 🎟️ Lottery Smart Contract

A smart contract that allows participants to enter a lottery and enables the manager to select a winner.

**Features**
- Participants can enter by sending ETH.
- Stores participant addresses.
- Allows the manager to select a winner.
- Transfers the prize to the selected winner.

**Concepts Learned**
- Payable functions
- Address and payable types
- Arrays and access control
- ETH transfers
- Smart contract state management

### 2. 🎉 Event Organizer Smart Contract

A smart contract for creating events and purchasing event tickets.

**Features**
- Create events with a name, date, ticket price, and ticket count.
- Purchase tickets for an event.
- Track event information and ticket availability.
- Practice managing multiple events through a smart contract.

**Concepts Learned**
- Structs
- Mappings
- Arrays and event IDs
- Function validation
- Smart contract state updates

### 3. 💼 Payroll System Smart Contract

A smart contract designed to explore how employee salary payments can be managed on the blockchain.

**Features**
- Store the payroll manager or owner address.
- Configure salary payment intervals.
- Practice managing salary-related data.
- Explore ETH payments and access control.

**Concepts Learned**
- Modifiers and access control
- `msg.sender` and `msg.value`
- Payable functions
- Time-based conditions
- ETH transfer logic

### 4. 🪙 ERC-20 Token Smart Contract

A basic ERC-20-style token implementation built to understand fungible tokens and token transfers.

**Features**
- Token name and symbol
- Initial token supply
- Token balances
- Token transfers
- Allowances and delegated transfers
- `Transfer` and `Approval` events, if implemented in the version used

**Concepts Learned**
- Mappings
- Nested mappings
- Constructors
- `transfer()`
- `approve()`
- `transferFrom()`
- Token decimals and base units

### 5. 🔰 Proity Token (PRT)

Proity (PRT) is a token contract that inherits from the ERC20 contract.

**Token Information**
- **Token Name:** Proity
- **Token Symbol:** PRT
- **Token Standard Goal:** ERC-20
- **Language:** Solidity

**Features**
- Inherits functionality from the ERC20 contract.
- Accepts an initial supply during deployment.
- Demonstrates Solidity inheritance and constructor arguments.

**Concepts Learned**
- Contract inheritance
- Parent constructor calls
- Solidity imports
- Code reusability
- Token deployment

## 🛠️ Technologies Used

- **Solidity** — Smart contract programming
- **Remix IDE** — Writing, compiling, and deploying contracts
- **MetaMask** — Wallet connection and transaction signing
- **Ethereum Sepolia Testnet** — Smart contract testing
- **Git & GitHub** — Version control and project management

## 🚀 How to Run the Projects

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create or import the required Solidity files.
3. Make sure imported filenames and paths match exactly.
4. Select the appropriate Solidity compiler version, such as `0.8.20` for contracts using `pragma solidity ^0.8.20;`.
5. Compile the contract.
6. For local testing, select a Remix VM environment.
7. For Sepolia deployment, connect MetaMask through the injected provider and select Sepolia.
8. Enter the required constructor parameters and deploy the contract.
9. Test the available functions and inspect transaction results.

**Important:** Sepolia deployment requires Sepolia test ETH for gas fees. Test ETH has no intended real-world monetary value.

## 🔄 Automated Market Maker (AMM)

A Solidity-based Automated Market Maker (AMM) smart contract built to understand the fundamentals of decentralized finance (DeFi).

### ✨ Features
- Add liquidity using two ERC-20 tokens
- Swap Token A for Token B
- Swap Token B for Token A
- Calculate token swap amounts using the constant-product pricing formula
- Apply a 0.3% fee in the swap calculation

### 🛠️ Tech Stack
- Solidity `^0.8.20`
- Remix IDE
- ERC-20 Tokens
- MetaMask
- Ethereum Sepolia Testnet for testing

### 📐 Pricing Formula
The contract uses the constant-product AMM pricing approach with a 0.3% fee:

`amountOut = (amountIn × 997 × reserveOut) / (reserveIn × 1000 + amountIn × 997)`

### 📚 What I Learned
- Liquidity pools and token reserves
- ERC-20 `transferFrom()` and `transfer()`
- Token swap calculations
- Solidity `require()` validations
- Basic DeFi and AMM concepts

### ⚠️ Note
This is an educational project and has not been audited for production use.





## 📚 Key Learning Outcomes

Through these projects, I am practicing:

- Solidity fundamentals and data types
- Smart contract deployment
- Inheritance and constructors
- Structs, arrays, and mappings
- ETH transfers and payable functions
- Token balances, approvals, and transfers
- Access control and validation
- Blockchain transactions and debugging

## 🔮 Future Improvements

- Improve contract validation and error handling.
- Add automated smart contract tests.
- Use OpenZeppelin implementations where appropriate.
- Build a frontend using JavaScript, React, and Ethers.js.
- Connect smart contracts with MetaMask.
- Explore more advanced Web3 and dApp development concepts.

## ⚠️ Disclaimer

These projects are created for educational purposes and blockchain development practice. They have not necessarily been audited or reviewed for production use. The custom ERC-20-style implementation may not implement every requirement of the ERC-20 standard.

Do not use these contracts to manage real funds without appropriate testing, security review, and auditing.

## 🤝 Contributions

Suggestions, feedback, and learning-focused contributions are welcome.

If you find an issue or have an improvement idea, feel free to open an issue or submit a pull request.

## ⭐ Support

If you find this repository useful, consider giving it a star!

**Keep Learning. Keep Building. Keep Exploring Blockchain.** 🚀
