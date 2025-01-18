// This setup uses Hardhat Ignition to manage smart contract deployments.
// Learn more about it at https://hardhat.org/ignition

const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("BlumeLiquidStakingModule", (m) => {

  const blsToken = m.contract("BLSToken");
  const stBlsToken = m.contract("stBLSToken");
  const blumeLiquidStaking = m.contract("BlumeLiquidStaking", [blsToken, stBlsToken]);

  return { blsToken, stBlsToken, blumeLiquidStaking };

});


