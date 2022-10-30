// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "openzeppelin-contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/access/Ownable.sol";


contract Token is ERC20, Ownable {
    constructor() ERC20("Tic Tac Token", "TTT") {}

    function mint(address account, uint256 amount) public  onlyOwner{
        _mint(account, amount);
    }

}