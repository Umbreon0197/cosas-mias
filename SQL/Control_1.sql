use bddcontrol ;
CREATE TABLE categoria (
    idcategoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(35) NOT NULL,
    descripcion VARCHAR(255),
    estado BIT
    );
insert into categoria (idcategoria, nombre, descripcion, estado) values (null,"calzado", "Productos de zapateria",1);
   
    create table persona (
       idcategoria INT PRIMARY KEY AUTO_INCREMENT,
       tipo_persona varchar (20),
	   nombre varchar (100),
	   tipo_documento varchar (20),
	   num_documento varchar (20),
       direccion varchar (70),
       telefono varchar (20),
       email varchar (50)
       );
       insert into persona (idcategoria, tipo_persona, nombre,  tipo_documento, num_documento, direccion, telefono email ) values (null,"Julia", "735667",1);

	create table usuario (
       idcategoria INT PRIMARY KEY AUTO_INCREMENT,
       idrol INT, 
       tipo_persona varchar (20) NOT NULL,
	   nombre varchar (100) NOT NULL,
	   tipo_documento varchar (20) NOT NULL,
	   num_documento varchar (20) NOT NULL,
       direccion varchar (70) NOT NULL,
       telefono varchar (20) NOT NULL,
       email varchar (50) NOT NULL,
       clave varchar (255) NOT NULL
       );
           insert into persona (idcategoria, tipo_persona, nombre,  tipo_documento, num_documento, direccion, telefono email) values (null,"Carmen", "735667",1);
	
       create table rol (
       idcategoria INT PRIMARY KEY AUTO_INCREMENT,
	   nombre varchar (30) NOT NULL,
       descripcion varchar (255) NOT NULL,
       estado BIT
       );
           insert into rol (idcategoria, nombre, descripcion, estado ) values (null,"Andres", "735667",2);
           
       -- Creación de la tabla articulo
CREATE TABLE articulo (
    idarticulo INT PRIMARY KEY AUTO_INCREMENT,
    idcategoria INT,
    codigo VARCHAR(50),
    nombre VARCHAR(100) NOT NULL,
    precio_venta DECIMAL(11, 2) NOT NULL,
    stock INT NOT NULL,
    descripcion VARCHAR(255),
    imagen VARCHAR(20),
    estado BIT,
    FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria)
);
		insert into articulo  (idcategoria, codigo, nombre, precio_venta, stock, descripcion, imagen, estado)  values (null,"Pantalones", "735667",1);


-- Creación de la tabla ingreso
CREATE TABLE ingreso (
    idingreso INT PRIMARY KEY AUTO_INCREMENT,
    idproveedor INT,
    idusuario INT,
    tipo_comprobante VARCHAR(20) NOT NULL,
    serie_comprobante VARCHAR(7),
    num_comprobante VARCHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    impuesto DECIMAL(4, 2) NOT NULL,
    total DECIMAL(11, 2) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (idproveedor) REFERENCES persona(idpersona),
    FOREIGN KEY (idusuario) REFERENCES usuario(idusuario)
);
		insert into articulo  (idingreso, idprovedor, idsusario, tipo_comprobante, serie_comprobante, num_comprobante, fecha, probante, impuesto, total, estado)  values (null,"Camisa", "735667",1);


-- Creación de la tabla venta
CREATE TABLE venta (
    idventa INT PRIMARY KEY AUTO_INCREMENT,
    idcliente INT,
    idusuario INT,
    tipo_comprobante VARCHAR(20) NOT NULL,
    serie_comprobante VARCHAR(7),
    num_comprobante VARCHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    impuesto DECIMAL(4, 2) NOT NULL,
    total DECIMAL(11, 2) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (idcliente) REFERENCES persona(idpersona),
    FOREIGN KEY (idusuario) REFERENCES usuario(idusuario)
);
		insert into articulo  (idventa, idcliente, idsusario, tipo_comprobante, serie_comprobante, num_comprobante, fecha, probante, impuesto, total, estado)  values (null,"Pantalones", "735667",1);


-- Creación de la tabla detalle_ingreso
CREATE TABLE detalle_ingreso (
    iddetalle_ingreso INT PRIMARY KEY AUTO_INCREMENT,
    idingreso INT,
    idarticulo INT,
    cantidad INT NOT NULL,
    precio DECIMAL(11, 2) NOT NULL,
    descuento DECIMAL(11, 2) NOT NULL,
    FOREIGN KEY (idingreso) REFERENCES ingreso(idingreso),
    FOREIGN KEY (idarticulo) REFERENCES articulo(idarticulo)
);
		insert into articulo (idventa, idcliente, idsusario, tipo_comprobante, serie_comprobante, num_comprobante, fecha, probante, impuesto, total, estado)  values (null,"Pantalones", "735667",1);
-- Creación de la tabla detalle_venta
CREATE TABLE detalle_venta (
    iddetalle_venta INT PRIMARY KEY AUTO_INCREMENT,
    idventa INT,
    idarticulo INT,
    cantidad INT NOT NULL,
    precio DECIMAL(11, 2) NOT NULL,
    descuento DECIMAL(11, 2) NOT NULL,
    FOREIGN KEY (idventa) REFERENCES venta(idventa),
    FOREIGN KEY (idarticulo) REFERENCES articulo(idarticulo)
);
       		insert into articulo (idventa, idcliente, idsusario, tipo_comprobante, serie_comprobante, num_comprobante, fecha, probante, impuesto, total, estado)  values (null,"Pantalones", "735667",1);

       
       
       
       
       
       



       