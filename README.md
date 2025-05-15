# 🏛️ Foundry Fund Me F25

A smart contract development project built with [Foundry](https://book.getfoundry.sh/) to demonstrate Solidity development, testing, and deployment. This project replicates the functionality of a basic "Fund Me" decentralized application similar to the one built in the `solidity-fcc` course by Patrick Collins, but adapted to Foundry tooling and workflow.

---

## 📁 Project Structure

```
foundry-fund-me-f25/
├── lib/                     # External dependencies (e.g., Chainlink contracts)
├── script/                  # Deployment and interaction scripts
│   └── DeployFundMe.s.sol   # Deploys the FundMe contract
├── src/                     # Source contracts
│   ├── FundMe.sol           # Main FundMe contract
│   ├── PriceConverter.sol   # Library for price feed conversion
│   └── interfaces/          # Interfaces (e.g., AggregatorV3Interface)
├── test/                    # Unit and integration tests
│   └── FundMe.t.sol         # Test file for FundMe
├── .env                     # Environment variables (e.g., private keys)
├── foundry.toml             # Foundry configuration
└── README.md                # This file
```

---

## 🚀 Getting Started

### Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation) (`forge`, `cast`)
- [Node.js](https://nodejs.org/en) + [yarn](https://classic.yarnpkg.com/en/docs/install/)
- (Optional) [Anvil](https://book.getfoundry.sh/anvil/)

### Installation

```bash
git clone https://github.com/arcanemg/foundry-fund-me-f25.git
cd foundry-fund-me-f25
forge install
```

---

## 🔨 Compile

```bash
forge build
```

---

## 🧪 Run Tests

```bash
forge test
```

To run with verbose logging:

```bash
forge test -vvvv
```

---

## 🔐 Environment Setup

Create a `.env` file in the root directory:

```
PRIVATE_KEY=your_private_key
RPC_URL=your_rpc_url
ETHERSCAN_API_KEY=your_etherscan_api_key
```

---

## 📜 Deploy the Contract

Use the provided `script/DeployFundMe.s.sol` script:

```bash
forge script script/DeployFundMe.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast
```

To verify the contract on Etherscan:

```bash
forge verify-contract --compiler-version v0.8.18 <DEPLOYED_ADDRESS> src/FundMe.sol:FundMe $ETHERSCAN_API_KEY
```

---

## 🧠 Concepts Covered

- Constructor injection of price feeds
- Chainlink Oracle integrations
- Solidity libraries (`PriceConverter`)
- Gas optimizations (`constant`, `immutable`)
- Access control (`onlyOwner`)
- Fallback and receive functions
- Unit testing with Foundry
- Script-based deployments

---

## 🤝 Acknowledgements

Built by [@arcanemg](https://github.com/arcanemg) as a Foundry implementation of the original `hardhat-fund-me` project from Patrick Collins' [Solidity Course](https://github.com/PatrickAlphaC/full-blockchain-solidity-course-js).

---
