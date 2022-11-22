//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract BooleanContract {

    bool public meuBooleano;

    function setMeuBooleano( bool _meuBooleano) public{
        meuBooleano = _meuBooleano;
    }

}