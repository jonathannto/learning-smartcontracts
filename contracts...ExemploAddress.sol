//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExemploAddress {

    address public algumAddress;

    function altAddress (address _algumAddress) public {
        algumAddress = _algumAddress;
    }

    function saldoAddress() public view returns(uint) {
        return algumAddress.balance;
    }

}