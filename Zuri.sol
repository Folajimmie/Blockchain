//SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Test {
    string public zuriTest;
    string public tag = "Hello World";

    constructor(string memory studentData) {
        zuriTest = studentData;
    }

    function zuriRecord(string memory newRecord) public {
        zuriTest = newRecord;
    }

    function getRecord() public view returns (string memory){
        return string(abi.encodePacked(tag, zuriTest));
    }
}