var AfterSchool_Crowdsale = artifacts.require("./contracts/AfterSchool_Crowdsale.sol")

module.exports = function(deployer) {
  deployer.deploy(AfterSchool_Crowdsale)
}