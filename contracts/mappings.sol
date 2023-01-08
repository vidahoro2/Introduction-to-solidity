// SPDX-License-Identifier: GPL-3.0

// Hacer referencia a la versión o versiones a usar
pragma solidity >= 0.7.0 <0.9.0;
//Se declara la creación de un contrato 
contract Saldo{

    mapping(address =>uint) public  balance;
    enum Estado {Iniciado, Finalizado}
    Estado public estadoDelContrato;
    constructor(){
        estadoDelContrato = Estado.Iniciado;
        balance[msg.sender] = 1000;
        estadoDelContrato = Estado.Finalizado;

    }
}