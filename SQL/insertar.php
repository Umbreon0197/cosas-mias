<?php
$conexion = mysqli_connect("localhost", "root", "", "alumnos") or die("No se pudo conectar con el servidor");

mysqli_query($conexion, "insert into alumnos(nombre, mail, codigocurso) values('$_REQUEST[nombre]', '$_REQUEST[mail]', '$_REQUEST[codigocurso]') ") or die("No se pudo hacer la inserción" . mysqli_error($conexion));

mysqli_close($conexion);

echo "Se han insertado los datos del alumno";

?>