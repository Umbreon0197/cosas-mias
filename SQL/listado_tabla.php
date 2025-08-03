<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    table{
      border-collapse: collapse;
      width: 100%;
    }
    td{
      padding: 8px;
    }
    tr:nth-child(odd){
      background-color:(even);
    }
  </style>
</head>
<body>
  <?php
  $conexion = mysqli_connect("localhost", "root", "", "alumnos") or die("No se pudo hacer la conexión");

  $registros = mysqli_query($conexion, "select codigo, nombre, mail, codigocurso from alumnos") or die("No se pudo hacer la consulta" . mysqli_error($conexion));
  //echo "<table border=1><tr><td>Código</td><td>Nombre</td><td>E-mail</td><td>Curso</td></tr>";
  echo "<table border=1>";
  echo "<tr>";
  echo "<td>Código</td>";
  echo "<td>Nombre</td>";
  echo "<td>E-mail</td>";
  echo "<td>Curso</td>";
  echo "</tr>";

  while($reg = mysqli_fetch_array($registros)){
    echo "<tr><td>" . $reg['codigo'] . "</td>";
    echo "<td>" . $reg['nombre'] . "</td>";
    echo "<td>" . $reg['mail'] . "</td>";
    echo "<td>";
    switch($reg['codigocurso']){
      case 1:
        echo "HTML</td>";
        break;
      case 2:
        echo "PHP</td>";
        break;
      case 3:
        echo "SQL</td>";
        break;
    }
    echo "</tr>";
    
  }
  echo "</table>";  
?>
</body>
</html>