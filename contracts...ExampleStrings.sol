//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExmapleStrings {

    string public myString = "Hello World";
    bytes public myBytes = unicode"Hello Wörld";

    function alterarString(string memory _myString) public {
        myString = _myString;
    }

   function compararDuasStrings(string memory _myString) public view returns(bool) {
       return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
   }

   function retornaTamanhoBytes() public view returns(uint) {
       return myBytes.length;
   }

}