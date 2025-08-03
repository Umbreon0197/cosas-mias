Create database Biblioteca;
Use biblioteca;

Create table Usuarios (
id INT AUTO_INCREMENT Primary key,
Nombre varchar (100) NOT NULL,
Email varchar (255)  UNIQUE NOT NULL,
Contraseña varchar (255)  UNIQUE NOT NULL,
fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

Create table Libros (
id INT AUTO_INCREMENT Primary key,
Titulo varchar (100) NOT NULL,
Autor varchar (100) NOT NULL,
Isbn varchar (20)  UNIQUE,
Editorial varchar (255),
publicacion INT,
categoria_id INT,
Foreign key (categoria_id) references Categorias (id)
);

Create table Categorias (
id INT AUTO_INCREMENT Primary key,
Nombre Varchar (100) unique not null
);

Create table Prestamos (
id INT AUTO_INCREMENT Primary key,
Usuario_id INT,
libro_id INT,
Fecha_prestamo date Not null,
Fecha_devolucion date,
estado enum('Prestado', 'Devuelto') Default 'Prestado',
Foreign key (Usuario_id) references Usuarios(id),
Foreign key (libro_id) references Libros(id)
);

Create table Resenas (
id INT AUTO_INCREMENT Primary key,
Usuario_id INT,
libro_id INT,
calificacion INT check (Calificacion between 1 and 5),
comentario Text,
Fecha timestamp Default current_timestamp,
Foreign key (Usuario_id) references Usuarios(id),
Foreign key (libro_id) references Libros(id)
);