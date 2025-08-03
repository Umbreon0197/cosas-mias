create database vistas;
use vistas;
drop table if exists profesores;
drop table if exists socios;

 create table profesores(
  codigo int auto_increment primary key,
  nombre varchar(30),
  deporte varchar (30),
  dia varchar(30)
 );

 create table socios(
  legajo int primary key auto_increment,
  documento char(8),
  nombreprofesor  varchar(40),
  apellido varchar(40),
  nombre varchar(30),
  domicilio varchar(30),
  documentosocio char(8),
  deporte varchar(30),
  dia varchar(30)
 );

insert into profesores(nombre,deporte,dia) values('Ernesto Cuesta','tenis','Lunes');
insert into profesores(nombre,deporte,dia) values('Alicia Clara','Baloncesto','Miercoles');
insert into profesores(nombre,deporte,dia) values('Felipe Carrasco','Futbol','Jueves');
insert into profesores(nombre,deporte,dia) values('Roberto Fernandez','Futbol americano','Martes');
insert into profesores(nombre,deporte,dia) values('Aaron Perez','Beisbol','Viernes');
insert into profesores(nombre,deporte,dia) values('Miguel Dos Santos','natacion','Sabados');


 insert into socios (documento,nombreprofesor,apellido,nombre,domicilio,documentosocio,deporte,dia)
   values ('22222222','Felipe Carrasco','Lopez','Ana','Colon 123',156,'Futbol','Jueves');
 insert into socios (documento,nombreprofesor,apellido,nombre,domicilio,documentosocio,deporte,dia)   
   values('23333333','Ernesto Cuesta','Lopez','Luis','Sucre 235',025,'tenis','Lunes');
 insert into socios (documento,nombreprofesor,apellido,nombre,domicilio,documentosocio,deporte,dia)
   values('24444444','Aaron Perez','Garcia','Marcos','Sarmiento 1234',242,'Beisbol','Viernes');
 insert into socios (documento,nombreprofesor,apellido,nombre,domicilio,documentosocio,deporte,dia)
   values('25555555','Miguel Dos Santos','Gomez','Pablo','Bulnes 321',333,'natacion','Sabados');
 insert into socios (documento,nombreprofesor,apellido,nombre,domicilio,documentosocio,deporte,dia)
   values('26666666','Roberto Fernandez','Perez','Laura','Peru 1254',340,'Futbol americano','Martes');
 insert into socios (documento,nombreprofesor,apellido,nombre,domicilio,documentosocio,deporte,dia)
   values('47888888','Alicia Clara','Fuertes','Martin','Peru 1254',001,'Baloncesto','Miercoles');
 
