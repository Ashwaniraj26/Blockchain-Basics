// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

contract ExampleUint {

    uint256 public myUint;

    uint8 public myUint8=250;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementUint() public {
        unchecked {
            myUint--;
        }
    }

    function incrementUint8() public {
        myUint8++;
    }
}