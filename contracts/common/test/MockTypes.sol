pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

import "../libraries/Types.sol";
/**
  * @notice Contract is a wrapper for Types library
  * for use with testing only
  *
  */
contract MockTypes {
  function hashParty(Types.Party memory _party) public pure returns (bytes32) {
    return Types.hashParty(_party);
  }

  function hashOrder(Types.Order memory _order, bytes32 _domainSeparator) public pure returns (bytes32) {
    return Types.hashOrder(_order, _domainSeparator);
  }

  function hashDomain(bytes memory _name,
  bytes memory _version,
  address _verifyingContract) public pure returns (bytes32) {
    return Types.hashDomain(_name, _version, _verifyingContract);
  }
}