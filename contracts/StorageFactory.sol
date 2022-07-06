// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";
contract StorageFactory {
    SimpleStorage public simpleStorage; //type

    function createSimpleStoraeContract() public {
        //We can Copy the Simple CA underneath "pragma solidity ^0.8.0" and that will work
        simpleStorage = new SimpleStorage(); //view of simple storage contract
    }
}