// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract WillThrow {
    error NotAllowedError(string);
    function aFunction() public pure {
        //require(false,"Error message");
        assert(false);
        revert NotAllowedError("You are not allowed");
    }
}

contract ErrorHandling {
    event ErrorLogging(string reason);
    event ErrorLogCode(uint256 code);
    event ErrorLogBytes(bytes lowLevelData);

    function cathTheError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {
            //add code here if it works
        } catch Error(string memory reason) {
            emit ErrorLogging(reason);
        } catch Panic(uint256 errorCode) {
            emit ErrorLogCode(errorCode);
        } catch (bytes memory lowLevelData) {
            emit ErrorLogBytes(lowLevelData);
        }
    }
}
