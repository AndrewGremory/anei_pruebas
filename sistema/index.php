<?php include_once "includes/header.php";?>
<p></p>
<div class="container text-center">
  <div class="row row-cols-4">
    <div class="col">Column</div>
    <div class="col">Column</div>
    <div class="col">Column</div>
    <div class="col">Column</div>

  </div>
  <div class="table-responsive">
                <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th width="100px">Cedula</th>
                            <th>Nombre</th>
                            <th>Municipio</th>
                            <th width="100px">Cantidad</th>
                            <th class="textright">Finca</th>
                            <th class="textright">Numero up</th>
                            <th>Acciones</th>
                        </tr>
                        <tr>
                            <td><input type="hidden" name="txt_cod_producto" id="txt_cod_producto">
                                <input type="text" name="txt_cod_pro" id="txt_cod_pro">
                            </td>
                            <td id="txt_descripcion">-</td>
                            <td id="txt_existencia">-</td>
                            <td><input type="text" name="txt_cant_producto" id="txt_cant_producto" disabled></td>
                            <td id="txt_precio" class="textright">0.00</td>
                            <td id="txt_precio_total" class="txtright">0.00</td>
                            <td><a href="#" id="add_product_venta" class="btn btn-dark" style="display: none;">Agregar</a></td>
                        </tr>
                        
                </table>

            </div>
</div>

<?php include_once "includes/footer.php";?>