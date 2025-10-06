// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract ExampleStrings{

    string public myString = "Hello World";
    bytes public myByte = "A";

    function changeString(string memory _newString) public {
        myString = _newString;
    }

    function compareTwoStrings(string memory _myString) public view returns (bool){
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }
}