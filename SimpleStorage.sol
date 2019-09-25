pragma solidity ^0.5.1;

contract DemoContract {
  uint public Data;

  constructor(uint initVal) public {
    Data = initVal;
  }

  function set(uint x) public {
    Data = x;
  }

  function get() view public returns (uint retVal) {
    return Data;
  }
}
