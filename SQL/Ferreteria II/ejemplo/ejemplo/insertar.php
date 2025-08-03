<?php
    $conexion = mysqli_connect("localhost", "root", "", "ejemplo", 3307) or die("Error al conectar con la base de datos");

    mysqli_query($conexion, "insert into alumnos(nombre, mail, codigocurso, imagen) values ('$_REQUEST[nombre]', '$_REQUEST[mail]', $_REQUEST[codigocurso], '$_REQUEST[imagen]')") or die("No se pudo hacer la insercion");

    mysqli_close($conexion);

    echo "El alumno fue dado de alta con exito";


?>