//SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

contract ExceptionRequireExample {
    mapping(address => uint) public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived[msg.sender], "Saldo insuficiente, pedido cancelado.");
            balanceReceived[msg.sender] -= _amount;
            _to.transfer(_amount);
    }
}