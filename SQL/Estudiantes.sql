create database colegio;
use colegio;

	create table estudiantes(
    id int unsigned not null primary key auto_increment,
    nombre varchar (255) not null,
    grupo varchar (255) not null
    )engine=InnoDB;

create table asignaturas(
    id int unsigned not null primary key auto_increment,
	nombre varchar (255) not null
    )engine=InnoDB;
    
    create table notas_estudiantes_asignaturas(
    id int unsigned not null primary key auto_increment,
	id_estudiantes int unsigned not null,
	id_asignaturas int unsigned not null,
    nota decimal (9,2) not null,
    foreign key (id_estudiantes) references estudiantes (id) on delete cascade on update cascade,
    foreign key (id_asignaturas) references asignaturas (id) on delete cascade on update cascade
    )engine=InnoDB;
    
