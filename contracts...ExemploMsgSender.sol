//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExemploMsgSender {

    address public algumAddress;

    function updatesomeAddresss() public {
        algumAddress = msg.sender;
    }
    
}