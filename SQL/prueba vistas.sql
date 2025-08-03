-- 1. Crear vista para mostrar socios inscriptos con detalles del curso y profesor
CREATE VIEW vista_socios_cursos AS
SELECT s.nombre AS socio, s.documento, c.deporte, c.dia, p.nombre AS profesor
FROM inscriptos i
JOIN socios s ON i.documentosocio = s.documento
JOIN cursos c ON i.numero = c.numero
JOIN profesores p ON c.documentoprofesor = p.documento;

-- 2. Consulta para contar socios inscriptos por deporte, ordenados por cantidad
SELECT deporte, COUNT(*) AS cantidad_socios
FROM vista_socios_cursos
GROUP BY deporte
ORDER BY cantidad_socios DESC;

-- 3. Mostrar socios con matrícula pendiente
SELECT socio, documento
FROM vista_socios_cursos
JOIN inscriptos i ON vista_socios_cursos.documento = i.documentosocio
WHERE i.matricula = 'N';

-- 4. Crear vista para ver profesores y días de clases
CREATE VIEW vista_profesores_clases AS
SELECT p.nombre AS profesor, c.dia
FROM profesores p
JOIN cursos c ON p.documento = c.documentoprofesor;

-- 5. Mostrar compañeros de tenis los lunes
SELECT socio, documento
FROM vista_socios_cursos
WHERE deporte = 'Tenis' AND dia = 'Lunes';

-- 6. Crear vista para inscriptos por curso
CREATE VIEW vista_inscriptos AS
SELECT c.deporte, c.dia, COUNT(i.documentosocio) AS cantidad_inscriptos
FROM cursos c
JOIN inscriptos i ON c.numero = i.numero
GROUP BY c.deporte, c.dia;

-- 7. Consultar la vista vista_inscriptos
SELECT * FROM vista_inscriptos;
