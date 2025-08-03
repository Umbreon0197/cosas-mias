CREATE DATABASE Tienda;
use Tienda ;

CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Telefono VARCHAR(15),
    Direccion VARCHAR(255)
);

CREATE TABLE Ordenes (
    ID_Orden INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
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