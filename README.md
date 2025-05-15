Foundry Fund Me F25
A crowdfunding smart contract built with the Foundry framework. This project allows users to fund the contract with ETH, enforces a minimum USD contribution using Chainlink price feeds, and enables only the contract owner to withdraw the funds.
GitHub

Features
ETH Funding: Users can fund the contract with ETH.

Minimum USD Contribution: Enforces a minimum contribution amount in USD (e.g., $5) using Chainlink price feeds.

Owner Withdrawals: Only the contract owner can withdraw the accumulated funds.

Fallback and Receive Functions: Supports fallback and receive functions to handle ETH sent directly to the contract.

Gas Optimization: Includes a cheaperWithdraw function for gas-efficient withdrawals.
GitHub
+1
GitHub
+1
GitHub

Getting Started
Prerequisites
Git: Ensure Git is installed. Verify with:

bash
Copy
Edit
git --version
Foundry: Install Foundry by following the instructions at Foundry Book. Verify installation with:

bash
Copy
Edit
forge --version
Installation
Clone the Repository:

bash
Copy
Edit
git clone https://github.com/arcanemg/foundry-fund-me-f25.git
cd foundry-fund-me-f25
Install Dependencies:
If using a Makefile, you can run:

bash
Copy
Edit
make
Alternatively, manually install dependencies:

bash
Copy
Edit
forge install
Usage
Build Contracts
Compile the smart contracts:

bash
Copy
Edit
forge build
Run Tests
Execute the test suite:

bash
Copy
Edit
forge test
Format Code
Automatically format your Solidity code:

bash
Copy
Edit
forge fmt
Gas Snapshot
Generate a gas usage snapshot:

bash
Copy
Edit
forge snapshot
Deploy Contracts
To deploy the contract, use the following command:

bash
Copy
Edit
forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url <RPC_URL> --private-key <PRIVATE_KEY> --broadcast
Replace <RPC_URL> with your Ethereum node RPC URL and <PRIVATE_KEY> with your wallet's private key.

Project Structure
src/: Contains the main Solidity contracts.

script/: Deployment and interaction scripts.

test/: Test contracts for unit testing.

lib/: External libraries and dependencies.

foundry.toml: Foundry configuration file.

Makefile: Automation commands for building and testing.
GitHub
+2
GitHub
+2
GitHub
+2
updraft.cyfrin.io

License
This project is licensed under the MIT License. See the LICENSE file for details.
