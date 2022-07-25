<?php
require '../BD/conexionpdo.php';

$con = new DataBase();
$pdo = $con->conectar();

$campo = $_POST["campo"];

$sql = "SELECT * FROM asociados WHERE nombre_usuario like '$campo%' order by nombre_usuario asc";

$query = $pdo->prepare($sql);
$query ->execute();

$html ="";

while($row = $query->fetch(PDO::FETCH_ASSOC)){
    $html .= "<li>".$row["nombre_usuario"]." - ".$row["finca"]." - ".$row["cedula_usuario"]. "</li>";
}

echo json_encode($html, JSON_UNESCAPED_UNICODE);

?>