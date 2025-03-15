==============
evm-deployer
==============

--------------------------------------------------------
Ethereum Virtual Machine Soldity smart contracts deployer
--------------------------------------------------------
:Version: evm-deployer |version|
:Manual section: 1

Synopsis
========

evm-deployer *[options]* *contract_file*

Description
===========

Solidity smart contracts deployer for Ethereum
Virtual Machine (EVM) compatible blockchain networks
written with the EVM toolchain.
It tightly integrates with EVM Wallet and EVM
Contracts Tools.

Networks
========

The list of supported networks can be
consulted using *evm-chains-info*.

Options
=======

-w wallet_path                  Wallet path.
-p wallet_password              Wallet password.
-s wallet_seed                  Wallet seed path.
-n network                      EVM network name.
-R rpc_selection                RPC selection method.
-k api_key                      Etherscan-like service key.
-A contract_abi                 Contract ABI.
-B contract_bytecode            Contract bytecode.
-O contract_compiler_output     Contract compiler output.
-b compiler_backend             It can be 'solc' or 'hardhat'.
-C solc_version                 Solc version.
-e evm_version                  EVM version.
-r retries_max                  Maximum number of retries before
                                failing.

-h                              Display help.
-c                              Enable color output.
-v                              Enable verbose output.


Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* evm-wallet
* evm-contract-call
* solidity-compiler

.. include:: variables.rst
