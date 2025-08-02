// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import {OwnableUpgradeable} from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import {Initializable} from "lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
contract BoxV1 is UUPSUpgradeable, Initializable, OwnableUpgradeable {
    uint256 internal number;
    function initialize() public initializer {
        //only once you can initiliase
        __Ownable_init(); //sets owner to: owner = msg.sender
        __UUPSUpgradeable_init();
    }
    function getNumber() external view returns (uint256) {
        return number;
    }
    function version() external pure returns (uint256) {
        return 1;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
