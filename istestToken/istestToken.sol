// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC20Token is ERC20, Ownable {

    uint public immutable MAX_SUPPLY;

    constructor() ERC20("istest", "istest") {
        MAX_SUPPLY = 1000000000 * 10**18;
    }

    function mint(uint _amount) public onlyOwner {
        require(totalSupply() + _amount <= MAX_SUPPLY, "MINT: Max Supply Exceeded");
        _mint(msg.sender, _amount);
    }
}
