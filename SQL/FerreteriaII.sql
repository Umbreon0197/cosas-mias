create database ferreteriaII;
use ferreteriaII;

CREATE TABLE categorias (
    id_categoria INT(11) PRIMARY KEY,
    nombre_categoria VARCHAR(100)
);

CREATE TABLE proveedores (
    id_proveedor INT(11) PRIMARY KEY,
    nombre_proveedor VARCHAR(100)
);

CREATE TABLE productos (
    id_producto INT(11) PRIMARY KEY,
    nombre_producto VARCHAR(100),
    id_categoria INT(11),
    id_proveedor INT(11),
    fecha_compra DATE,
	Precio_compra DOUBLE,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

create table tienda(
  id_tienda INT(11) AUTO_INCREMENT PRIMARY KEY,
  Nombre_tienda varchar (50) NOT NULL UNIQUE
);

create table ventas(
  id_venta INT(11) AUTO_INCREMENT PRIMARY KEY,
  fecha_venta DATE NOT NULL,
  id_Tienda INT(11) NOT NULL, 
  id_producto INT(11) NOT NULL,
  importe DOUBLE (5,2),
  FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
  FOREIGN KEY (id_Tienda) REFERENCES tienda(id_tienda)
);


