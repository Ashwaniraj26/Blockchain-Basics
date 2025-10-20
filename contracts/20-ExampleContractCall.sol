// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ContractOne {
    mapping(address => uint256) public addressBalance;

    function deposit() public payable {
        addressBalance[msg.sender] += msg.value;
    }

    receive() external payable {
        deposit();
    }
}

contract ContractTwo {
    receive() external payable {}

    function depositOneContractOne(address _contractOne) public {
        //bytes memory payload = abi.encodeWithSignature("deposit()");
        (bool success, ) = _contractOne.call{value: 10, gas: 100000}("");
        require(success);
    }
}
