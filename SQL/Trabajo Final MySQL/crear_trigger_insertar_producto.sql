USE rmunoz_alimentacion;
CREATE TABLE IF NOT EXISTS rmunoz_pvp (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(50),
    precio_base DECIMAL(10,2),
    precio_final DECIMAL(10,2),
    iva DECIMAL(5,2),
    fecha_caducidad DATE
);
DROP TRIGGER IF EXISTS insertar_producto;

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
