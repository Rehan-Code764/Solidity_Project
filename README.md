# 🎰 Solidity Lottery Smart Contract

A simple decentralized lottery smart contract built with Solidity. The contract allows users to participate by sending ETH and selects a winner from the registered participants.

## 🚀 Features

- 👥 Multiple participants
- 💰 ETH-based participation
- 🎲 Random winner selection
- 🏆 Winner receives the contract balance
- 🔐 Manager-controlled winner selection
- 🧹 Participants reset after winner selection

## 🛠️ Tech Stack

- Solidity
- Remix IDE
- Ethereum
- Sepolia Testnet
- MetaMask

## 📋 Smart Contract Functions

### `Enter()`
Allows a user to participate in the lottery by sending the required ETH.

### `Get_Balance()`
Returns the current ETH balance of the contract.

### `Select_Winner()`
Selects a winner from the participants and transfers the contract balance to the selected winner.

### `Random()`
Generates a pseudo-random value used for selecting the winner.

## 🔄 How It Works

1. Deploy the Lottery contract.
2. Users enter the lottery by sending ETH.
3. Their addresses are stored in the participants array.
4. The manager calls `Select_Winner()`.
5. A participant is selected.
6. The contract balance is transferred to the winner.
7. The participants list is reset for the next round.

## 🌐 Network

The contract was deployed and tested on the **Sepolia Testnet**.

## ⚠️ Disclaimer

This project is created for learning and educational purposes. The randomness used in this contract is not suitable for production or real-money lotteries.

## 👨‍💻 Author

Rehan Ansari

GitHub: https://github.com/Rehan-Code764
