..
   SPDX-License-Identifier: AGPL-3.0-or-later

   ----------------------------------------------------------------------
   Copyright © 2024, 2025  Pellegrino Prevete

   All rights reserved
   ----------------------------------------------------------------------

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.

   You should have received a copy of the GNU Affero General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.



==============
evm-deployer
==============

--------------------------------------------------------------------------------
Ethereum Virtual Machine compatible networks Solidity smart contracts deployer
--------------------------------------------------------------------------------
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

The deployer supports directly building the input
sources as well as publishing them on the
cross-network, network-neutral,
on-chain EVM Contracts' Source Index.

No silly per-network explorer verification
anymore.

Networks
========

The list of supported networks can be
consulted using *evm-chains-info*.

Options
=======

-A contract_abi                 Contract ABI. Specify only when
                                deploying a single contract.
-B contract_bytecode            Contract bytecode. Specify only
                                when deploying a single contract.
-O contract_compiler_output     Contract compiler output. Specify
                                only when deploying a single contract.
-b compiler_backend             It can be 'solc' or 'hardhat'.
                                It will be the same for all the
                                input contracts.
-C solc_version                 Solc version. It will be the same
                                for all input contracts.
-e evm_version                  EVM version. It will be the same
                                for all input contracts.
-r retries_max                  Maximum number of retries before
                                failing.
-T call_timeout                 Maximum number of milliseconds before
                                declaring the deploying failed.
-R rpc_selection                Target network RPC selection method.
-o contract_output_file         Where to save a JSON representing
                                the contract object resulting from
                                the deployment. Specify only when
                                deploying a single contract.
-x tx_deployment_output_file    Where to save a JSON representing
                                the transaction object resulting from
                                the deployment. Specify only when
                                deploying a single contract.
-P                              Publishes the contract's source
                                on the on-chain, network-neutral,
                                network-independent, uncensorable
                                EVM Contracts Source Index.

Credentials options
=====================

-N wallet_name                  EVM wallet name.
-w wallet_path                  Wallet path.
-p wallet_password              Wallet password.
-s wallet_seed                  Wallet seed path.
-k api_key                      Etherscan-like service key.

LibEVM options
===================

-n network                      EVM network name.

Application options
=====================

-W cache_dir                    Work directory.

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
