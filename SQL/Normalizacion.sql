CREATE DATABASE TiendaMusica;
USE TiendaMusica;

-- Tabla No Normalizada
CREATE TABLE Ordenes_No_Normalizada (
    ID_Orden INT,
    Cliente VARCHAR(100),
    Telefono VARCHAR(15),
    Direccion VARCHAR(255),
    ID_Producto INT,
    Producto VARCHAR(100),
    Cantidad INT,
    Precio_Unitario DECIMAL(10,2),
    Total DECIMAL(10,2)
);

CREATE TABLE Clientes(
  ID_Cliente INT KEY AUTO_INCREMENT, 
  Nombre VARCHAR(50),
  Telefono VARCHAR(15),
  Direccion VARCHAR(255)
);

CREATE TABLE Ordenes(
  ID_Cliente INT KEY AUTO_INCREMENT, 
    ID_Cliente INT,
	FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
);

CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10,2)
);

CREATE TABLE DetalleOrden (
    ID_Detalle INT PRIMARY KEY AUTO_INCREMENT,
    ID_Orden INT,
    ID_Producto INT,
    Cantidad INT,
    Precio_Unitario DECIMAL(10,2),
    Total DECIMAL(10,2),
    FOREIGN KEY (ID_Orden) REFERENCES Ordenes(ID_Orden),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);
