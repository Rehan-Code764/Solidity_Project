// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ERC-20.sol";

contract AMM{
    ERC20 public  tokenA;
    ERC20 public  tokenB;

    uint256 public reserveA;
    uint256 public reserveB;

    constructor( address _tokenA,address _tokenB){
        tokenA=ERC20(_tokenA);
        tokenB=ERC20(_tokenB);

    }

    function Liquidity(uint256 amountA,uint256 amountB) external {

        require(tokenA.transferFrom(msg.sender,address(this),amountA),"Transfer Failed");  
        require(tokenB.transferFrom(msg.sender,address(this),amountB),"Transfer Failed"); 

        reserveA+=amountA;
        reserveB+=amountB;
        
    }

    function GetAmount(uint256 amountin,uint256 reservein,uint256 reserveout) public pure returns(uint256 amountout) {
        uint256 amountInWithfee=amountin*997;
        uint256 numerator=amountInWithfee*reserveout;
        uint256 denominator=(reservein*1000)+amountInWithfee;
        return numerator/denominator;
    }


function swapAforB(uint256 amountAin) external {
    require(amountAin > 0, "Amount must be positive");
    require(reserveA > 0 && reserveB > 0, "Insufficient liquidity");

    uint256 amountBout = GetAmount(amountAin,reserveA,reserveB);
    require(amountBout > 0, "Output too small");
    require(amountBout < reserveB, "Insufficient reserve");

    require(tokenA.transferFrom(msg.sender, address(this), amountAin),"Token A transfer failed" );

    require(tokenB.transfer(msg.sender, amountBout),"Token B transfer failed");

    reserveA += amountAin;
    reserveB -= amountBout;
}

function swapBforA(uint256 amountBin) external {
    require(amountBin > 0, "Amount must be positive");
    require(reserveA > 0 && reserveB > 0, "Insufficient liquidity");

    uint256 amountAout = GetAmount(amountBin,reserveB,reserveA);

    require(amountAout > 0, "Output too small");
    require(amountAout < reserveA, "Insufficient reserve");

    require(tokenB.transferFrom(msg.sender, address(this), amountBin),"Token B transfer failed");

    require(tokenA.transfer(msg.sender, amountAout),"Token A transfer failed");

    reserveB += amountBin;
    reserveA -= amountAout;
}


}

