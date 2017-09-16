pragma solidity ^0.4.13;

import "./token/MintableToken.sol";
contract AfterSchool_Token is MintableToken {
    string public constant name = "AfterSchool Token";
    string public constant symbol = "AST";
    uint8 public constant decimals = 18;

    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals));

  function AfterSchool_Token() {
	totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
