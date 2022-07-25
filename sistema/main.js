$(document).ready(function(){
    $('#txt_cod_pro').keyup(function(e) {
        e.preventDefault();
        var productos = $(this).val();
        if (productos == "") {
          $('#txt_descripcion').html('-');
          $('#txt_existencia').html('-');
          $('#txt_cant_producto').val('0');
          $('#txt_precio').html('0.00');
          $('#txt_precio_total').html('0.00');
      
          //Bloquear Cantidad
          $('#txt_cant_producto').attr('disabled', 'disabled');
          // Ocultar Boto Agregar
          $('#add_product_venta').slideUp();
        }
        var action = 'infoProducto';
        if (productos != '') {
        $.ajax({
          url: '../BD/consultas.php',
          type: "POST",
          async: true,
          data: {action:action,producto:productos},
          success: function(response){
            if(response == 0) {
              $('#txt_descripcion').html('-');
              $('#txt_existencia').html('-');
              $('#txt_cant_producto').val('0');
              $('#txt_precio').html('0.00');
              $('#txt_precio_total').html('0.00');
      
              //Bloquear Cantidad
              $('#txt_cant_producto').attr('disabled','disabled');
              // Ocultar Boto Agregar
              $('#add_product_venta').slideUp();
      
      
            }else{
              var info = JSON.parse(response);
              if (info.existencia < 1) {
                $('#txt_descripcion').html(info.nombre_usuario);
                $('#txt_cod_producto').val(info.municipio);
                $('#txt_existencia').html(info.vereda);
                $('#txt_precio').html(info.finca);
                $('#txt_precio_total').html(info.numero_up);
                //Bloquear Cantidad
                $('#txt_cant_producto').attr('disabled', 'disabled');
                // Ocultar Boto Agregar
                $('#add_product_venta').slideUp();
              }else{
                $('#txt_descripcion').html(info.nombre_usuario);
                $('#txt_existencia').html(info.municipio);
                $('#txt_cod_producto').val(info.vereda);
                $('#txt_cant_producto').val(info.estatus);
                $('#txt_precio').html(info.finca);
                $('#txt_precio_total').html(info.numero_up);
                // Activar Cantidad
                $('#txt_cant_producto').removeAttr('disabled');
                // Mostar boton Agregar
                $('#add_product_venta').slideDown();
              }
      
            }
          },
          error: function(error) {
          }
        });
        $('#txt_descripcion').html('-');
        $('#txt_existencia').html('-');
        $('#txt_cant_producto').val('0');
        $('#txt_precio').html('0.00');
        $('#txt_precio_total').html('0.00');
      
        //Bloquear Cantidad
        $('#txt_cant_producto').attr('disabled','disabled');
        // Ocultar Boto Agregar
        $('#add_product_venta').slideUp();
      
        }
    });
});

