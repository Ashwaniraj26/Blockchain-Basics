// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SampleContract {
    string public myString = "Hello World";
    
    constructor() payable {
        // Contract can now receive ether on deployment
    }
    
    function updateString(string memory _myString) public payable {
        if (msg.value == 1 ether) {
            myString = _myString;
        } else {
            // Refund the sent value if not exactly 1 ether
            (bool success, ) = payable(msg.sender).call{value: msg.value}("");
            require(success, "Refund failed");
        }
    }
    
    // Alternative: Only update if exactly 1 ether, else revert
    function updateStringStrict(string memory _myString) public payable {
        require(msg.value == 1 ether, "Must send exactly 1 ether");
        myString = _myString;
    }
}