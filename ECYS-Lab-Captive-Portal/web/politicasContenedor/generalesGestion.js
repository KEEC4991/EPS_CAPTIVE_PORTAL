/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function windowNuevaPolitica() {
    $('#form_new_policy').form('reset');
    $('#window_new_politica').window('open');
}

function savePolicy() {

    var validacionFormulario = $('#form_new_policy').form('validate');

    if (validacionFormulario === true) {
        var tipo = $('#policy_tipo_combobox').combobox('getValue');
        var nombre = $('#policy_nombre_textbox').textbox('getText');
        var valor = $('#policy_valor_textbox').textbox('getText');
        var descripcion = $('#policy_descripcion_textbox').textbox('getText');
        var usuario = sessionStorage.getItem('id_usuario');

        $.ajax({
            url: 'http://172.10.1.100:8080/ECYS-CP/pol-cap?accion=2',
            data: {tipo: tipo, nombre: nombre, valor: valor, descripcion: descripcion, usuario: usuario},
            success: function (data, textStatus, jqXHR) {

                try {

                    var objetoResultado = JSON.parse(data);
                    if (data.resultado === "1") {
                        $.messager.alert('Nueva politica', 'Politica almacenada exitosamente.', 'info');
                    }else{
                        $.messager.alert('Error', 'Problemas al registrar la nueva politica.', 'error');
                    }

                } catch (e) {
                        $.messager.alert('Error', 'Problemas al registrar la nueva politica. Error de servidor.', 'error');
                }

            }
        });


    } else {
        $.messager.alert('Error', 'Falta ingresar información de la nueva politica.', 'warning');
    }

}