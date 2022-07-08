// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol"; //Do this instead of copying the whole Contract here
contract StorageFactory {
    SimpleStorage[] public simpleStorageArray; //simplestorae array

    function createSimpleStoraeContract() public {
        //We can Copy the SimpleStorage CA underneath "pragma solidity ^0.8.0" and that will work
       SimpleStorage simpleStorage = new SimpleStorage(); //view of simple storage contract
       simpleStorageArray.push(simpleStorage); //To view an array
    
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //Address
        //ABI(Application Binary Interface) - Tells code how to interact with CA
        //to call store fn we need that contract object
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber); //Saving CA object in SimpleStorageIndex using simpleStorage variable
        //Call store fn on store fn
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}