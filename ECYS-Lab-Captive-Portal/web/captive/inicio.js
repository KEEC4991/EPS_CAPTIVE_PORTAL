/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function access_validation() {

    var validacion_formulario = $('#formulario_inicio').form('validate');

    if (validacion_formulario) {

        var param_carnet = $('#txt_ingreso_carnet').numberbox('getValue');

        $.ajax({
            url: 'http://172.10.1.100:8080/ECYS-CP/init-contr',
            type: 'POST',
            data: {carnet: param_carnet},
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                try {
                    var result = JSON.parse(data);
                    
                    if (result.resultado == true) {
                        $.messager.alert({
                            title: 'Ingreso a Red Internet Inalambrico',
                            msg: result.mensaje + '<br><p style="text-align:center;"> Se redigirá a google.com</p>',
                            fn: function () {
                                location.replace('https://google.com');
                            }
                        });

                    } else {
                        $.messager.alert('Ingreso a Red Internet Inalambrico', result.mensaje, 'warning');
                    }

                } catch (error) {
                    console.log(error);
                    $.messager.alert('Ingreso a Red Internet Inalambrico', 'Error de respuesta del servidor.', 'warning');
                }
            }
        });
    } else {
        $.messager.alert('Inicio de Sesion', '<p style="text-align:center">Ingrese su número de carnet... </p><br><p style="text-align:center;color:red;font-weight:bold;">Si no se ha registrado como usuario de la red interna, presione el boton de registro.</p>')

    }
}

function redirect_reg() {
    location.replace('http://172.10.1.100:8080/ECYS-CP/reg-cap');
}


