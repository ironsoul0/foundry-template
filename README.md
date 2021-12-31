# foundry-template

Streamlined template for getting started with Foundry, Solmate and Hardhat.
Inspired by [dapptools-template](https://github.com/transmissions11/dapptools-template) by [@transmissions11](https://github.com/transmissions11).

Plays nicely with [Solmate](https://github.com/Rari-Capital/solmate) and [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts) contracts out-of-the-box. Deploy to [hardhat](https://github.com/nomiclabs/hardhat) with ease.

## Getting started

```sh
git clone https://github.com/ironsoul0/foundry-template.git
cd foundry-template
yarn
```

## Example of deploying to local chain

```sh
# spin up the local hardhat node
yarn chain 

# build the artifacts
forge build 

# deploy to hardhat node
forge create $CONTRACT_NAME --mnemonic-path $MNEMONIC_PATH --rpc-url $RPC_URL
```

In case of `hardhat`, `$PRC_URL` can be defined as `http://localhost:8545`