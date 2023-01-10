const funciones = artifacts.require("funciones");

module.exports = function (deployer) {
  deployer.deploy(funciones, "funciones");
};