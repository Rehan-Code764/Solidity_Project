// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20 {
    string public name;
    string public symbol;
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner,address indexed spender,uint256 value);

    constructor(string memory _name,string memory _symbol,uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;

        // Input whole tokens mein hai
        totalSupply = _initialSupply * 10 ** uint256(decimals);
        balanceOf[msg.sender] = totalSupply;

        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function transfer(address to, uint256 amt) external returns (bool) {
        require(to != address(0), "Zero address");
        require(balanceOf[msg.sender] >= amt, "Insufficient balance");

        balanceOf[msg.sender] -= amt;
        balanceOf[to] += amt;

        emit Transfer(msg.sender, to, amt);
        return true;
    }

    function approve(address spender, uint256 amt) external returns (bool) {
        require(spender != address(0), "Zero address");

        allowance[msg.sender][spender] = amt;

        emit Approval(msg.sender, spender, amt);
        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amt
    ) external returns (bool) {
        require(to != address(0), "Zero address");
        require(balanceOf[from] >= amt, "Insufficient balance");
        require(allowance[from][msg.sender] >= amt, "Allowance exceeded");

        allowance[from][msg.sender] -= amt;
        balanceOf[from] -= amt;
        balanceOf[to] += amt;

        emit Transfer(from, to, amt);
        return true;
    }
}
