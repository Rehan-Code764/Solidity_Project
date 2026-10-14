# 🔗 Solidity Projects

A collection of my Solidity smart contract projects created while learning and practicing **Blockchain Development, Smart Contracts, and Web3**.

These projects focus on understanding how decentralized applications can use smart contracts to manage transactions, users, assets, and real-world use cases.

---

## 📂 Projects

### 🎟️ 1. Event Organizer Smart Contract

A smart contract for creating events, selling tickets using Ether, and transferring tickets between wallet addresses.

#### Features

* Create future events
* Set ticket price and total ticket quantity
* Buy multiple tickets using ETH
* Track remaining tickets
* Transfer tickets to another wallet
* Store event and ticket ownership on-chain

#### Solidity Concepts

* `struct`
* `mapping`
* Nested mappings
* `msg.sender`
* `msg.value`
* `block.timestamp`
* `payable`
* `require()`
* `storage`
* Ether transactions

---

### 🎰 2. Lottery Smart Contract

A blockchain-based lottery smart contract where participants can enter by paying Ether and a winner can be selected by the manager.

#### Features

* ETH-based lottery participation
* Participant address management
* Manager-controlled winner selection
* Random winner selection
* Automatic prize transfer
* On-chain transaction handling

#### Solidity Concepts

* `payable`
* `msg.value`
* `msg.sender`
* `address`
* `address payable`
* Dynamic arrays
* `require()`
* Ether transfer
* Contract balance
* Random number generation

---
3. Payroll System Smart Contract 💰

A payroll management smart contract that allows an administrator to manage employees and distribute salaries in ETH.

Features

Add employees with their names, wallet addresses, and salaries.

Update employee salaries.

Remove employees.

Store employee records using mappings.

Maintain an array of employee addresses.

Pay all eligible employees in a single transaction.

Pay an individual employee.

Fund the contract with ETH.

Check contract balance and employee count.

Configure the salary payment interval.

Concepts Practiced

Structs and mappings

Arrays and loops

Modifiers and access control

Block timestamps

Payable addresses

ETH transfers using call

Contract balance management

File: PayRoll.sol

Note: Salary values are stored in Wei. Batch salary payments require sufficient contract balance and gas. The current zero payment interval is intended for testing and allows eligible employees to be paid without waiting for a time interval.

## 🛠️ Technologies Used

* **Solidity**
* **Ethereum / EVM**
* **Remix IDE**
* **MetaMask**
* **Git & GitHub**

---



## 🧠 What I Am Learning

Through these projects, I am practicing:

* Smart contract development
* Solidity syntax and programming concepts
* Ethereum transactions
* Wallet interaction
* ETH payments
* Mappings and structs
* Contract state management
* Access control
* On-chain data handling

---

## 🔮 Future Plans

I plan to connect these smart contracts with a Web3 frontend using:

* JavaScript
* React.js
* ethers.js
* MetaMask

The goal is to convert these smart contracts into complete **Web3 DApps** with user-friendly interfaces.

---

## 👨‍💻 Author

**Rehan Ansari**

Blockchain Developer | Solidity | Web3

---

⭐ This repository documents my practical learning journey in **Solidity and Blockchain Development**.
