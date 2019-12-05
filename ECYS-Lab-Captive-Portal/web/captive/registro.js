/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function saveNewUser() {

    var validacion = $('#reg_cap_formulario').form('validate');

    if (validacion) {

        var param_carnet = $('#txt_reg_carnet').numberbox('getValue');
        var param_nombre = $('#txt_reg_nombre').textbox('getValue');
        var param_apellido = $('#txt_reg_apellido').textbox('getValue');
        var param_fecha_nac = $('#txt_reg_fecha').datebox('getValue');
        var param_carrera = $('#txt_reg_carrera').combobox('getValue');
        var param_correo = $('#txt_reg_correo').textbox('getValue');

        if (param_carrera != 0) {
            $.ajax({
                url: 'http://localhost:8080/ECYS-CP/reg-contr',
                type: 'POST',
                data: {
                    carnet: param_carnet,
                    nombre: param_nombre,
                    apellido: param_apellido,
                    fecha_nacimiento: param_fecha_nac,
                    carrera: param_carrera,
                    correo: param_correo
                },
                success: function (data, textStatus, jqXHR) {

                    try {
                        var resultado = JSON.parse(data, true);
                        if (resultado.resultado == true) {
                            $.messager.alert({
                                title: 'Registro de Usuario',
                                msg: '<p style="text-align:center;"><b>' + resultado.mensaje + '</b><br> Se redigirá al login de acceso principal a la red de internet.</p>',
                                fn: function () {
                                    location.replace("http://localhost:8080/ECYS-CP/init-cap")
                                }
                            });
                        } else {
                            $.messager.alert({
                                title: 'Registro de Usuario Denegado!',
                                msg: '<p style="text-align:center;">' + resultado.mensaje + '</p>'
                            });
                        }
                    } catch (error) {
                        $.messager.alert('Registro de Usuario', 'Error en mensaje recibido del servidor: <br>' + data, 'warning');
                    }

                }
            });
        }else{
            $.messager.alert('Registro de usuario de la red...','<p style="text-align:center;">Pendiente de seleccionar una carrera...</p>','warning');
        }

    } else {
        $.messager.alert('Registro de nuevo usuario', 'Existen datos invalidos o pendientes de ingresar!', 'warning');
    }


}

