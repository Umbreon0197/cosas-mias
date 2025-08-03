create database if not exists ferreteria;
use ferreteria;

create table categorias(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
Nombre varchar (100) NOT NULL UNIQUE
);

create table proveedor(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
Nombre varchar (100) NOT NULL UNIQUE
);

create table articulos(
id_articulos INT AUTO_INCREMENT PRIMARY KEY,
Nombre varchar (100) Not NULL UNIQUE,
id_categoria INT NOT NULL, 
id_proveedor INT NOT NULL,
precio_compra decimal (10,2),
fecha_compra date,
FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria),
FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor)
);

create table puntos_venta(
id_punto_venta INT AUTO_INCREMENT PRIMARY KEY,
Nombre varchar (100) NOT NULL UNIQUE
);

create table ventas(
id_venta INT AUTO_INCREMENT PRIMARY KEY,
fecha_venta date not null,
id_articulo INT NOT NULL, 
id_punto_venta INT NOT NULL,
importe decimal (10,2),
FOREIGN KEY (id_articulo) REFERENCES articulos(id_articulo),
FOREIGN KEY (id_punto_venta) REFERENCES puntos_venta(id_punto_venta)
);


