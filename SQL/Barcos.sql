create database Barcos;
use database: Barcos;
CREATE TABLE Zonas (
    letra CHAR(1) PRIMARY KEY,
    tipo_barcos VARCHAR(20),
    número_barcos INT,
    profundidad DECIMAL(5,2),
    ancho DECIMAL(5,2)
) ENGINE=InnoDB;

CREATE TABLE Socios (
    DNI VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50),
    dirección VARCHAR(100),
    teléfono VARCHAR(15),
    fecha_ingreso DATE
) ENGINE=InnoDB;

CREATE TABLE Amarres (
    número_amarre INT PRIMARY KEY,
    lectura_agua DECIMAL(5,2),
    lectura_luz DECIMAL(5,2),
    mantenimiento BOOLEAN,
    zona_letra CHAR(1),
    FOREIGN KEY (zona_letra) REFERENCES Zonas(letra)
) ENGINE=InnoDB;

CREATE TABLE Empleados (
    código INT PRIMARY KEY,
    nombre VARCHAR(50),
    dirección VARCHAR(100),
    teléfono VARCHAR(15),
    especialidad VARCHAR(50),
    zona_letra CHAR(1),
    FOREIGN KEY (zona_letra) REFERENCES Zonas(letra)
) ENGINE=InnoDB;

CREATE TABLE Embarcaciones (
    matrícula VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50),
    tipo VARCHAR(20),
    dimensiones VARCHAR(20),
    socio_DNI VARCHAR(10),
    FOREIGN KEY (socio_DNI) REFERENCES Socios(DNI)
) ENGINE=InnoDB;