drop database if exists alumnos;
create database alumnos;
use alumnos;
drop table if exists alumnos;
create table alumnos(
    codigo int AUTO_INCREMENT primary key, 
    nombre varchar (50),
    mail varchar (70),
    codigocurso int 
)engine=InnoDB;