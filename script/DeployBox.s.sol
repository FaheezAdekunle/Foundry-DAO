// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {Box} from "src/Box.sol";

contract DeployBox is Script{

    function run() external {
        deployBox();
    }

    function deployBox() public returns(Box){
        Box box;
        vm.startBroadcast();
        box = new Box();
        vm.stopBroadcast();
        return box;
    }

}
