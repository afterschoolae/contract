pragma solidity ^0.4.13;

import "./crowdsale/CappedCrowdsale.sol";
import "./crowdsale/RefundableCrowdsale.sol";

import "./crowdsale/Crowdsale.sol";
import './AfterSchool_Token.sol';


contract AfterSchool_Crowdsale is CappedCrowdsale, RefundableCrowdsale {

  function AfterSchool_Crowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _goal, uint256 _cap, address _wallet)
    CappedCrowdsale(_cap)
    FinalizableCrowdsale()
    RefundableCrowdsale(_goal)
    Crowdsale(_startTime, _endTime, _rate, _wallet) {
    require(_goal <= _cap);
  }

  function createTokenContract() internal returns (MintableToken)  {
    return new AfterSchool_Token();
  }

}
