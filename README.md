#openzeppelin-uups-proxies
A practical guide to UUPS proxy upgrades with Foundry — learn the UUPS pattern, understand its advantages, and follow step-by-step instructions to implement and upgrade smart contracts securely.

Overview
This repository demonstrates how to use the UUPS (Universal Upgradeable Proxy Standard) proxy pattern for upgradeable smart contracts using OpenZeppelin's upgradeable contracts library and Foundry as your development framework.

The UUPS proxy pattern enables:

Minimal proxy footprint

Gas-efficient upgrades

Explicit upgrade control within your implementation contract

Compatibility with OpenZeppelin's upgradeable contracts

Prerequisites
Before getting started, make sure you:

Have Foundry installed (foundry installation guide)

Use OpenZeppelin Contracts Upgradeable v4.5.0 for compatibility

Important: Run the following command to install the exact OpenZeppelin contracts version:

bash
Копиране
Редактиране
forge install openzeppelin/openzeppelin-contracts-upgradeable@v4.5.0
Getting Started
Implement your UUPS Upgradeable Contract

Your contract should inherit from UUPSUpgradeable and implement the _authorizeUpgrade function to control who can upgrade.

Deploy the implementation and proxy

Upgrade the contract

Use the upgrade function (often through a script or admin interface) to upgrade your implementation logic while preserving state.

Why UUPS?
Upgrade logic is inside the implementation contract (not the proxy), reducing proxy size and complexity.

Allows fine-grained control of upgrades via the _authorizeUpgrade hook.

Widely adopted and supported in OpenZeppelin ecosystem.

Additional Resources
OpenZeppelin UUPS Proxy Documentation

Foundry Book

OpenZeppelin Contracts Upgradeable GitHub
