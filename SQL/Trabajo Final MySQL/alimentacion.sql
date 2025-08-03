CREATE DATABASE rmunoz_alimentacion;
USE rmunoz_alimentacion;
CREATE TABLE producto (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10,2)
);

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `categoria`) VALUES
(1, 'LACTEOS'),
(2, 'CARNES'),
(3, 'PESCADOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio_compra` double(6,2) NOT NULL,
  `fecha_compra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

Create table if not exists rmunoz_pvp(
id INT PRIMARY KEY,
Nombre VARCHAR (100),
Categoria VARCHAR (50),
precio_base DECIMAL (10,2),
precio_final DECIMAL (10,2),
iva DECIMAL (5,2),
fecha_caducidad DATE
);
--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `idCategoria`, `nombre`, `precio_compra`, `fecha_compra`) VALUES
(2, 2, 'CERDO', 2.00, '2024-06-05'),
(7, 1, 'TT', 1.00, '2024-06-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DROP TABLE IF EXISTS insertar_producto

DELIMITER $$
CREATE TRIGGER insertar_producto
AFTER INSERT ON producto
FOR EACH ROW
BEGIN
    DECLARE iva DECIMAL(5,2);
    DECLARE dias INT;
    DECLARE precio_final DECIMAL(10,2);
    DECLARE fecha_cad DATE;

    IF NEW.categoria = 'LACTEOS' THEN
        SET iva = 0.21;
        SET dias = 30;
    ELSEIF NEW.categoria = 'CARNES' THEN
        SET iva = 0.15;
        SET dias = 4;
    ELSEIF NEW.categoria = 'PESCADOS' THEN
        SET iva = 0.10;
        SET dias = 2;
    END IF;

    SET precio_final = NEW.precio * 1.30 * (1 + iva);
    SET fecha_cad = DATE_ADD(CURDATE(), INTERVAL dias DAY);

    INSERT INTO rmunoz_pvp (id, nombre, categoria, precio_base, precio_final, iva, fecha_caducidad)
    VALUES (NEW.id, NEW.nombre, NEW.categoria, NEW.precio, precio_final, iva, fecha_cad);
END$$
DELIMITER ;





