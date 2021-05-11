// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol";
import "./Ownable.sol";

contract payableCalculator is Ownable {
    using Address for address payable;
    
    mapping(address => uint256) private _balances;
    uint256 private _profit;
    uint256 private _totalProfit;
    uint256 private _tax;

    constructor(address owner_) Ownable(owner_) {
        _tax >= 0.001 ether;
    }
   
    function deposit() external payable {
        require(msg.value >= 0.001 ether, "You must send at least 0.001 ETH");
        _profit += _tax;
        _totalProfit += _tax;
    }

    function withdrawProfit() public onlyOwner {
        require(_profit > 0, "payableCalculator: can not withdraw 0 ether");
        uint256 amount = _profit;
        _profit = 0;
        payable(msg.sender).sendValue(amount);
    }
    
    function profit() public view returns(uint256) {
        return _profit;
    }

    function totalProfit() public view returns(uint256) {
        return _totalProfit;
    }
    
    function add(int256 a, int256 b) public returns (int256) {
        // fonctiion count
        // fonction deposit
        return a + b;
    }

    function sub(int256 a, int256 b) public returns (int256) {
         // fonctiion count
        // fonction deposit
        return a - b;
    }

    function mul(int256 a, int256 b) public returns (int256) {
         // fonctiion count
        // fonction deposit
        return a * b;
    }
    
    function mod(int256 a, int256 b) public returns (int256) {
         // fonctiion count
        // fonction deposit
        return a % b;
    }

    function div(int256 a, int256 b) public payable returns (int256) {
         // fonctiion count
        // fonction deposit
        require(b != 0, "payableCalculator: cannot devide by 0 ");
        return a / b;
    }
}