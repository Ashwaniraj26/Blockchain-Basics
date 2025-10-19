// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract MyContract{
    string public myString= "Hello world";
    function updateOurString(string memory _myString) public {
        myString = _myString;
    } 
} 