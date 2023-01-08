// SPDX-License-Identifier: GPL-3.0

// Hacer referencia a la versión o versiones a usar
pragma solidity >= 0.7.0 <0.9.0;
//Se declara la creación de un contrato 
contract Funciones{
    //Ejemplo función pública que no accede a ninguna variable del contrato
    function Suma(uint numero1, uint numero2) public pure returns(uint){
        return numero1 + numero2;

    }
    //Ejemplo función privada sin acceso a las variables del estado del contrato
    function sumaInterna(uint numero1, uint numero2) private pure returns (uint){
        return numero1 + numero2;
    }

    uint private resultado;
    //Ejemplo función pública de solo lectura
    function ObtenerResultados() public view returns (uint){
        return resultado;
    }

//Constructor
    constructor(){

    }
}