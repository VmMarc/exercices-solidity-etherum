// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract simpleStorage {
    
    int256 private _storedData;
    
    
    function setStoredData(int256 value) public {
        _storedData = value;
    }
    
    function storedData() public view returns (int256) {
        return _storedData;
    }
}