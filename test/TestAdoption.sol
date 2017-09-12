pragma solidity ^0.4.11;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
  Adoption adoption = Adoption(DeployedAddresses.Adoption());

  function testUserCanAdoptPet() {
    uint returnId = adoption.adopt(8);

    uint expected = 8;

    Assert.equal(returnId, expected, "Adoption of pet ID 8 should be recorded.");
  }
}
