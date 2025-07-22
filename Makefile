-include .env

.PHONY: all test deploy

build :; forge build

forge :; forge test

install :; forge install cyfrin/foundry-devops@0.2.2 && forge install smartcontractkit/chainlink-brownie-contracts@1.1.1 && forge install foudnry-rs/forge-std@v1.8.2 && forge install transmissions11/solmate@v6

deploy-sepolia :
	@forge script script/DeployRaffle.s.sol:DeployRaffle --rpc-url $(SEPOLIA_RPC_URL) --account fake --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv