// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import {OwnableUpgradeable} from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
contract BoxV2 is UUPSUpgradeable, OwnableUpgradeable {
    uint256 internal _value;

    function initialize() public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    function setValue(uint256 newValue) public {
        _value = newValue;
    }

    function getValue() public view returns (uint256) {
        return _value;
    }

    function version() public pure returns (uint256) {
        return 2;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}
}
