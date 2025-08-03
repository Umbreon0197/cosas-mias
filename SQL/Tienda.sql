drop database if exists tienda;
create database tienda;
use tienda;
drop table if exists productos;
create table productos(
  id int AUTO_INCREMENT,
  nombre varchar(40),
  categoria varchar(30),
  precio float,
  cantidad int,
  primary key(id)
)engine=InnoDB;
insert into productos (id, nombre, categoria, precio, cantidad) values (null,"Memoria RAM 256", "Memoria", 20.50, 12);
insert into productos (id, nombre, categoria, precio, cantidad) values (null,"Memoria NVM2","Discos Duros",20.50, 12);
insert into productos (id, nombre, categoria, precio, cantidad) values (null,"Memoria RAM 256", "Memoria 2s", 20.50, 12);