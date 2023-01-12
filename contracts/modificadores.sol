// SPDX-License-Identifier: GPL-3.0

// Hacer referencia a la versión o versiones a usar
pragma solidity >= 0.7.0 <0.9.0;
//Se declara la creación de un contrato 
contract  modificadores{

    address private owner;
    string private nombreOwner;
    
    constructor(string memory nombre){
        owner = msg.sender;
        nombreOwner = nombre;
    }
    function Suma (uint numero1, uint numero2) public view esOwner() returns (uint){
        return numero1 + numero2;
    }

    modifier esOwner(){
        //Para restringir el acceso a la dirección que no haya desplegado el contrato
        if(msg.sender != owner) revert();
        _;
    }

    }