drop database if exists clientes;
create database clientes;
use clientes;
drop table if exists clientes;
create table clientes(
    codigo int AUTO_INCREMENT primary key, 
    DNI int (11),
    Nombre varchar (60),
    Apellidos varchar (60),
    Dirección varchar (60),
    Teléfono int (11),
    codigoCliente int 
)engine=InnoDB;