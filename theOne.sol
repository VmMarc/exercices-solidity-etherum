// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract theOne {
    
    uint256 private _numberOne;
    
    constructor() {
        _numberOne = 1;
    }
    
    function one() public view returns (uint256) {
        return _numberOne;
    }
}