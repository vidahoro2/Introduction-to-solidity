// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interface.sol";
import  "./modificadores.sol";

contract Herencia is Suma, modificadores{

    constructor(string memory nombreNuevo) modificadores(nombreNuevo){

    }

    function sumar(uint numero1, uint numero2) public override esOwner() view returns (uint){
        return numero1+numero2;
    }

}