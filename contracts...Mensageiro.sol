//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Mensageiro {

    uint public contador;
    address public implantador;
    string public mensagem;

    constructor() {
        implantador = msg.sender;
    }

    function atualizaMensagem(string memory _novaMensagem) public {
        if(msg.sender == implantador) {
            mensagem = _novaMensagem;
            contador++;
        }
    }

}