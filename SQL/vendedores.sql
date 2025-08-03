create database moviles2;
create table ventas(
	idVenta int(11),
    fecha date,
    codigoVendedor varchar(15),
	codigoProducto varchar(10),
    unidades int (11),
    importe decimal (10,2)
)engine=InnoDB;

create table vendedores(
	CodigoVendedor varchar(15),
    nombre varchar (100),
    fechaincorporacion date,
	idZona int (11),
    telefono int (11),
    idEstado int (11)
)engine=InnoDB;

create table estados(
    idEstado int (11),
    estado varchar (10),
    descripcion varchar (100)
)engine=InnoDB;