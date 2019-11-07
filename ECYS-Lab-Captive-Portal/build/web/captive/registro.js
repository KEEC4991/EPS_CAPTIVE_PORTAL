/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function saveNewUser() {

    var validacion = $('#reg_cap_formulario').form('validate');

    if (validacion) {
        
        $.ajax({
            url: '',
            type: 'POST',
            data : {},
            success: function (data, textStatus, jqXHR) {
                
            }
        });
        
        console.log("registrando");
        
    } else {
        $.messager.alert('Registro de nuevo usuario', 'Existen datos invalidos o pendientes de ingresar!', 'warning');
    }


}

