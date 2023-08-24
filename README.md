# BLOCKCHAIN VOTING

Elections are increasingly being scrutinized for inefficiency, lack of transparency, and potential vulnerabilities.
As democracies around the world strive to create a more transparent, secure, and accessible voting process, 
blockchain technology emerges as a promising solution.

## SECURITY

Blockchain's cryptographic principles make it extremely difficult for malicious actors to alter the information once recorded. 
This ensures that once a vote is cast, it cannot be changed.

## TRANSPARENCY

Unlike traditional systems, blockchain allows for a transparent yet anonymous review of the voting records. 
Any entity can verify the transactions, ensuring that the process is open and transparent while maintaining voter privacy.

## EFFICIENCY

The decentralized nature of blockchain allows for real-time recording and verification of transactions, making the voting process faster and more efficient.
This can greatly reduce the time needed for vote counting and result announcement.

## REMIX DEFAULT WORKSPACE

Remix default workspace is present when:
i. Remix loads for the very first time 
ii. A new workspace is created with 'Default' template
iii. There are no files existing in the File Explorer

This workspace contains 2 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.

## SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.
