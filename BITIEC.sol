pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BITIEC is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BITIEC(address _owner)  UpgradeableToken(_owner) {
    name = "BITIEC";
    symbol = "BIC";
    totalSupply = 7500000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}