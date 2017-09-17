pragma solidity ^0.4.13;

import "./token/MintableToken.sol";
contract AfterSchool_Token is MintableToken {
    string public constant name = "AfterSchool Token";
    string public constant symbol = "AST";
    uint8 public constant decimals = 18;

    uint256 public constant INITIAL_SUPPLY = 800000000;

  function AfterSchool_Token() {
	totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
