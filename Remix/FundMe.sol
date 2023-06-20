
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
// import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {
    
    uint256 public minimumUSD = 5;
    
    function fund() public payable {
        // Allow users to send $
        // Have a minimum $ sent $5
        // 1. How do we send ETH to this contract?
        require(msg.value >= minimumUSD, "didn't send enough eth");
    }

    // function withdraw() public {}

    function getPrice() public view returns(uint256) {
        // Address
        // ABI
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price,,,) = pricefeed.latestRoundData();
        return uint256(price * 1e10);
    }

    function getConversionRate() public {}

    function getVersion() public view returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
}