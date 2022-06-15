// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract ImpactScope_Faucet {
    address public owner;

    IERC20  public istestAddress;
    IERC20  public IMPACTSAddress;
    uint256  public istestAmount;
    uint256  public IMPACTSAmount;
    
    event TransferSent(address _from, address _destAddr, uint _amount);
    
    constructor(IERC20 _istestAddr, uint256 _istestAmount, IERC20 _impactsAddr, uint256 _impactsAmount) {
        owner = msg.sender;
        istestAddress = _istestAddr;
        IMPACTSAddress = _impactsAddr;
        istestAmount = _istestAmount;
        IMPACTSAmount = _impactsAmount;
    }

    function changeistestAddress(IERC20 _istestAddr) public {
        require(msg.sender == owner, "Only the owner can call this function"); 
        istestAddress = _istestAddr;
    }

    function changeIMPACTSAddress(IERC20 _impactsAddr) public {
        require(msg.sender == owner, "Only the owner can call this function"); 
        IMPACTSAddress = _impactsAddr;
    }
    
    function changeistestAmount(uint256 _istestAmount) public {
        require(msg.sender == owner, "Only the owner can call this function"); 
        istestAmount = _istestAmount;
    }

    function changeIMPACTSAmount(uint256 _impactsAmount) public {
        require(msg.sender == owner, "Only the owner can call this function"); 
        IMPACTSAmount = _impactsAmount;
    }

    function getistestFaucet() public {
        istestAddress.transfer(msg.sender, istestAmount);
        emit TransferSent(address(this), msg.sender, istestAmount);
    }

    function getIMPACTSFaucet() public {
        IMPACTSAddress.transfer(msg.sender, IMPACTSAmount);
        emit TransferSent(address(this), msg.sender, IMPACTSAmount);
    }
}