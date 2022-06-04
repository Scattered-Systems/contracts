require('dotenv').config()

module.exports = {
  compilers: {
    solc: {
      version: "^0.8.0"
    }
  },
  contracts_directory: './src/contracts',
  etherscan: {
    apiKey: process.env.ETHERSCAN_API_KEY
  },
  migrations_directory: './src/migrations',
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "5777" // Match any network id
    }
  }
};
