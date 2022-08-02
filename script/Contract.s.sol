// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console2.sol";

contract ContractScript is Script {
    function setUp() public {}

    function run() public {
        bool boolEnvVar = vm.envBool("BOOL_ENV_VAR");
        console2.log("BOOL_ENV_VAR", boolEnvVar);
        bool boolEnvVar2 = vm.envBool("BOOL_ENV_VAR_2");
        console2.log("BOOL_ENV_VAR_2", boolEnvVar2);
        string memory stringEnvVar = vm.envString("STRING_ENV_VAR");
        console2.log("STRING_ENV_VAR", stringEnvVar);
    }
}
