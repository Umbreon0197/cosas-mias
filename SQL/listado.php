<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <?php
  $conexion = mysqli_connect("localhost", "root", "", "alumnos") or die("No se pudo hacer la conexión");

  $registros = mysqli_query($conexion, "select codigo, nombre, mail, codigocurso from alumnos") or die("No se pudo hacer la consulta" . mysqli_error($conexion));

  while($reg = mysqli_fetch_array($registros)){
    echo "Código: " . $reg['codigo'] . "<br>";
    echo "Nombre: " . $reg['nombre'] . "<br>";
    echo "E-mail: " . $reg['mail'] . "<br>";
    echo "Curso: ";
    switch($reg['codigocurso']){
      case 1:
        echo "HTML";
        break;
      case 2:
        echo "PHP";
        break;
      case 3:
        echo "SQL";
        break;
    }
    echo "<hr>";
  }
  echo "<br>";  
?>
</body>
</html>