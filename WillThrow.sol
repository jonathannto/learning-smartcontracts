//SPDX-License-Idenfitier: MIT
pragma solidity 0.8.14;

contract WillThrow {
    
   /* function aFunction() public {
        require(false, "Error message");
    } */

    error ThisIsACustomError(string, string);
    function aFunction() public pure {
        revert ThisIsACustomError("Text 1", "text message 2");
    }
}

contract ErrorHandling {
    event ErrorLogging(string reason);
    function catchError() public {
        WillThrow will = new WillThrow();

        try will.aFunction() {
            //codigo aqui.
        } catch Error(string memory reason) {
            emit ErrorLogging(reason);
        }
    }


}