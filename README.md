🚀 Foundry Lottery Smart Contract

A smart contract project using Foundry, designed for decentralized funding and testing on zkSync and Sepolia.

🛠 Getting Started
🔧 Requirements
Git

git --version
# Expected: git version x.x.x
Foundry

forge --version
# Expected: forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)
⚡ Quickstart
git clone https://github.com/superboyx13/foundry-smart-contract-f23
cd foundry-fund-me-f23
make
💻 Optional: Use Gitpod
Don't want to install locally? Use Gitpod to launch in a dev environment instantly.

Open in Gitpod

📦 Usage
🔁 Deploy
forge script script/DeployRaffle.s.sol
✅ Testing
We cover 4 test tiers:

Unit
Integration
Forked ✅
Staging ✅
Run tests:

forge test
Run specific test:

forge test --match-test testFunctionName
Test coverage:

forge coverage
🌐 Local zkSync Setup
🧩 Additional Requirements
foundry-zksync

forge --version
# Expected: forge 0.0.2 (zkSync)
Node + npm + npx

npm --version   # e.g., 7.24.0
npx --version   # e.g., 8.1.0
Docker

docker --version   # e.g., Docker version 20.10.7
docker --info      # Should show `Context: default`
🧪 Start zkSync Local Node
npx zksync-cli dev config
# Choose: In memory node, no additional modules

npx zksync-cli dev start
Expected output:

In memory node started v0.1.0-alpha.22
Chain ID: 260
RPC URL: http://127.0.0.1:8011
Reference: zkSync Rich Accounts

🚀 Deploy to zkSync Local Node
make deploy-zk
🔐 Deployment to Sepolia Testnet
🧾 Environment Variables
Create a .env file (see .env.example) and define:

PRIVATE_KEY=your_private_key   # Don't use a key with real funds
SEPOLIA_RPC_URL=https://your-sepolia-node-url
ETHERSCAN_API_KEY=your_key     # Optional
Get testnet ETH: Chainlink Faucets

🛰 Deploy to Sepolia
forge script script/DeployFundMe.s.sol \
  --rpc-url $SEPOLIA_RPC_URL \
  --private-key $PRIVATE_KEY \
  --broadcast \
  --verify \
  --etherscan-api-key $ETHERSCAN_API_KEY

⛽ Estimate Gas
forge snapshot
Output: .gas-snapshot file with cost estimates.

🎨 Formatting
forge fmt