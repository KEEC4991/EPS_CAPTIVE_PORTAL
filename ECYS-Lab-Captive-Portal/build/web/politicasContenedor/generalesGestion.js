/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function windowNuevaPolitica() {

    var seleccionado = $('#dg_politicas_administracion').datagrid('getSelected');

    if (seleccionado) {
        $('#form_new_policy1').form('reset');
        $('#form_new_policy2').form('reset');
        if (seleccionado.id_estado === "Texto") {
            $('#window_new_politica2').window('open');
        } else if (seleccionado.id_estado === "Numerico") {
            $('#window_new_politica1').window('open');
        }
    } else {
        $.messager.alert('Error', 'Debe seleccionar una politica administrativa.', 'warning');
    }

}

function deshabilitarPolitica() {


    var seleccionado = $('#dg_politicas_administracion').datagrid('getSelected');

    if (seleccionado) {
        $.messager.confirm({
            title: 'Deshabilitar Politica',
            msg: '<p style="text-align:center;"><b>Desea deshabilitar la politica seleccionada?? </b><br>El valor de la politica será asignado como NA.</p>',
            fn: function (r) {
                if (r) {

                    $.ajax({
                        url: 'http://172.10.1.100:8080/ECYS-CP/pol-cap?accion=5',
                        data: {id_politica: seleccionado.id_politica},
                        success: function (data, textStatus, jqXHR) {
                            try {
                                var objetoResultado = JSON.parse(data);
                                if (objetoResultado.resultado === "1") {
                                    $.messager.alert('Deshabilitar politica', 'Politica deshabilitada.', 'info');
                                    $('#dg_politicas_administracion').datagrid('reload');
                                } else {
                                    $.messager.alert('Error', 'Problemas al desactivar la pólitica.', 'error');
                                }

                            } catch (e) {
                                $.messager.alert('Error', 'Problemas al registrar la desactivación de la politica. Error de servidor.', 'error');
                            }
                        }
                    });

                }
            }
        });
    } else {
        $.messager.alert('Error', 'Debe seleccionar una politica administrativa.', 'warning');
    }

}

function savePolicy() {

    var valorRegistro = "";
    var seleccionado = $('#dg_politicas_administracion').datagrid('getSelected');
    if (seleccionado.id_estado === "Texto") {
        valorRegistro = $('#policy_valor_registro_texto').textbox('getValue');
    } else if (seleccionado.id_estado === "Numerico") {
        valorRegistro = $('#policy_valor_registro_numero').textbox('getValue');
    }

    if (valorRegistro !== "") {
        $.ajax({
            url: 'http://172.10.1.100:8080/ECYS-CP/pol-cap',
            data: {accion: 4, id_politica: seleccionado.id_politica, valor_politica: valorRegistro},
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                var objetoResultado = JSON.parse(data);
                if (objetoResultado.resultado === "1") {
                    $.messager.alert('Valor de  politica', 'Valor registrado exitosamente.', 'info');
                    $('#dg_politicas_administracion').datagrid('reload');
                    $('#window_new_politica1').window('close');
                    $('#window_new_politica2').window('close');
                } else {
                    $.messager.alert('Error', 'Problemas al registrar el valor de la politica.', 'error');
                }
                
            }
        });
    }

    /*
     
     
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
     } else {
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
     */

}