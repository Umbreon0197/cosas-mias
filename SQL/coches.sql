create database pruebas;
use pruebas;
create table libros ( 
codigo int unsigned auto_increment,
titulo varchar (20) not null,
autor varchar (30),
editorial varchar (25),
precio float unsigned,
cantidad int unsigned,
isbn char (13),
primary key (codigo)
)engine=InnoDB; 

describe libros;
insert into libros(codigo, autor, editorial, isbn, precio, cantidad)
values(null, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Planeta', '1234567890', 
(null, 'Sexo y cohete', 'Jack Parsons', 'Bruño', '01234567890',17,18,19, 21);

drop table coches;
create table coches(
chasis char (17),
tipo varchar(10),
fllegada date,
hllegada time,
fsalida date,
hsalida time
)engine=InnoDB;
insert into coches (chasis, tipo, fllegada, hllegada, fsalida, hsalida)
values ('12345679012345678', 'SUV','2024-11-02', '8:30', '2024-11-08', null);