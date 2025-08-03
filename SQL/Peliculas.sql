create database imdb;
use imdb;
create table peliculas(
	id int not null auto_increment,
    posicion int,
    titulo varchar(75),
    genero varchar(50),
    descripcion varchar(255),
    director varchar(50),
    actores varchar(255),
    fecha varchar(4),
    duracion varchar(25),
    puntuacion varchar(3),
    votos varchar(10),
    taquilla float,
    metascore float,
    primary key(id)
)engine=InnoDB;

insert into peliculas(id, posicion, titulo, genero, descripcion, director, actores, fecha, duracion, puntuacion, votos, taquilla, metascore)
 values(null, "1002", "Aquí llega Candemor", "Comedia", "No se puede describir", "Alvaro Saenz de Heredia", "Chiquito de la Calzada", "1997", "90", "3.4", "513", 12.3, 3.4);

select * from peliculas;

    