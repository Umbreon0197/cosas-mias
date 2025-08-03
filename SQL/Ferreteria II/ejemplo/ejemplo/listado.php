<?php
    $conexion = mysqli_connect("localhost", "root", "", "ejemplo", 3307) or die("Error al conectar con la base de datos");

    $registros = mysqli_query($conexion, "select * from alumnos") or die("No se hallaron registros");

    while($reg=mysqli_fetch_array($registros)){
        echo "Codigo: " . $reg['codigo'] . "<br>";
        echo "Nombre: " . $reg['nombre'] . "<br>";
        echo "Email: " . $reg['mail'] . "<br>";
        echo "Curso: " . $reg['codigocurso'] . "<br>";
        echo "Imagen: " . "<img src='$reg[imagen]'>" . "<br>";
    }

?>