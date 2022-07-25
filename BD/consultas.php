<?php 
include_once("conexion.php");
session_start();
//print_r($_POST);
if (!empty($_POST)) {
  // Extraer datos del producto
  if ($_POST['action'] == 'infoProducto') {
      $data = "";
    $producto_id = ($_POST['producto']);
    $query = mysqli_query($conexion, "SELECT * FROM asociados WHERE cedula_usuario  like '$producto_id%'");

    $result = mysqli_num_rows($query);
    if ($result > 0) {
      $data = mysqli_fetch_assoc($query);
      echo json_encode($data,JSON_UNESCAPED_UNICODE);
      exit;
    }else {
      $data = 0;
    }
  }
// Eliminar Producto
  if ($_POST['action'] == 'delProduct') {
    if (empty($_POST['producto_id']) || !is_numeric($_POST['producto_id'])) {
      echo "error";
    }else {

    $idproducto = $_REQUEST['producto_id'];
    $query_delete = mysqli_query($conexion, "UPDATE producto SET estado = 0 WHERE codproducto = $idproducto");
    mysqli_close($conexion);

  }
 echo "error";
 exit;
}
exit;
}
?>
