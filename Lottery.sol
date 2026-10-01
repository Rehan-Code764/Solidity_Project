// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructor() {
        manager = msg.sender;
    }
    receive() external payable {
        require(msg.value == 0.01 ether);
        participants.push(payable(msg.sender));
    }
    function Get_Balance() public view returns (uint) {
        require(msg.sender == manager);
        return address(this).balance;
    }
    function Random() public view returns (uint) {
        return
            uint(
                keccak256(
                    abi.encodePacked(
                        block.prevrandao,
                        block.timestamp,
                        participants
                    )
                )
            );
    }
    function Select_Winner() public {
        require(msg.sender == manager);
        require(participants.length >= 3);
        uint r = Random();
        uint index = r % participants.length;
        address payable Winner;
        Winner = participants[index];
        (bool success, ) = Winner.call{value: address(this).balance}("");
        require(success, "Transfer failed");
        delete  participants;
    }
}
