create database mates;
use mates;

create table rectangulos(
id int auto_increment primary key,
base int,
altura int,
area int as (base * altura)
)engine=InnoDB;

create table esfera(
id int auto_increment primary key,
radio int,
volumen float as (4/3*3.14*radio*radio*radio)
)engine=InnoDB;

insert into esfera (radio) values (977);
select * from esfera;
