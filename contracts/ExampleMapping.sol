// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ExampleMapping {
    mapping(uint256 => bool) public myMapping;
    mapping(address => bool) public myAddresssMApping;
    mapping(uint256 => mapping(uint256 => bool)) public uintUintBoolMapping;

    function setValue(uint256 _index) public {
        myMapping[_index] = true;
    }

    function setMyAddressToTrue() public {
        myAddresssMApping[msg.sender] = true;
    }

    function setUintUintBoolMapping(
        uint256 _key1,
        uint256 _key2,
        bool _value
    ) public {
        uintUintBoolMapping[_key1][_key2] = _value;
    }
}
