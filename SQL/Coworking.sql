Create database Coworking;
Use Coworking;

Create table Usuarios(
id INT AUTO_INCREMENT Primary key,
Nombre varchar (100) NOT NULL,
Email varchar (100)  UNIQUE NOT NULL,
telefono varchar (90)  UNIQUE NOT NULL,
tipo ENUM('cliente', 'administrador') NOT NULL,
Saldo decimal (10,2)
);

Create table Usuarios(
id INT AUTO_INCREMENT Primary key,
Nombre varchar (100) NOT NULL,
Email varchar (100)  UNIQUE NOT NULL,
telefono varchar (90)  UNIQUE NOT NULL,
tipo ENUM('cliente', 'administrador') NOT NULL,
Saldo decimal (10,2),
activo BOOLEAN DEFAULT TRUE
);




