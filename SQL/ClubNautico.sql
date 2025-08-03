Create database ClubNautico;
use ClubNautico;

Create table Socios(
DNI Varchar(10) PRIMARY KEY, 
Nombre Varchar(50),
Direccion Varchar(90),
Teléfono Varchar(15),
FechaIngreso DATE 
);

Create table Embarcaciones(
SocioDNI Varchar(10) PRIMARY KEY, 
Nombre Varchar(50),
Tipo Varchar(90),
Dimensiones Varchar(15),
Matricula Varchar(10),
NºAmarre Varchar(2),
FOREIGN KEY (SocioDNI) REFERENCES Socio(DNI)
);

Create table Zona(
Letra CHAR(1) primary key,
TipoBarco Varchar (50),
NumeroBarcos INT,
Profundidad FLOAT,
AnchoAmarre FLOAT
);

Create table Amarre(
NºAmarre int PRIMARY KEY,
ContadorLuz Varchar(7),
ContadorAgua Varchar(10),
ZonaLetra Char(1),
Mantenimiento Varchar(5),
FOREIGN KEY (ZonaLetra) REFERENCES Zona(Letra)
); 

Create table Empleados(
codigo int PRIMARY KEY,
Nombre Varchar(10),
Apellidos Varchar(10),
Direccion Varchar(90),
Especialidad Varchar(30)
); 

Create table PropietariosBarcos(
DNI Varchar(10),
Matrícula Varchar (20),
FechaAsignacion DATE,
PRIMARY KEY (NºAmarre, Matricula),
FOREIGN KEY (NºAmarre) REFERENCES Amarre (NºAmarre),
FOREIGN KEY (NºAmarre) REFERENCES Embarcacion(Matrícula)
); 

Create table OcupacionAmarre(
NumeroAmarre INT,
Matricula Varchar (20),
FechaAsignacion DATE,
PRIMARY KEY (NºAmarre, Matricula),
FOREIGN KEY (NºAmarre) REFERENCES Amarre (NºAmarre),
FOREIGN KEY (NºAmarre) REFERENCES Embarcaciones(Matrícula)
); 

Create table CompraAmarre(
DNI Varchar (10),
NumeroAmarre INT,
Matricula Varchar (15),
FechaAsignacion DATE,
PRIMARY KEY (DNI,NºAmarre),
FOREIGN KEY (DNI) REFERENCES Socio(DNI),
FOREIGN KEY (NºAmarre) REFERENCES Amarre(NºAmarre)
); 

Create table AsignaAmarre(
DNI Varchar (10),
ZonaLetra INT,
NumeroBarcos INT
PRIMARY KEY (CódigoEmpleado, ZonaLetra),
FOREIGN KEY (codigoEmpleado) REFERENCES empleado(codigo),
FOREIGN KEY (ZonaLetra) REFERENCES Zona(Letra)
); 

