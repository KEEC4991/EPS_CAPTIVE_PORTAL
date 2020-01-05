$(document).ready(function () {

});

function confirmar_Cambio_Estado_Usuario_Administracion()
{
    var listo = $('#form_cambio_estado').form('validate');

    if (listo) {
        var seleccionado = $('#dg_usuarios_admin_administrivos').datagrid('getSelected');
        var nuevo_estado = $('#cmb_tipo_ususario_cambio_estado').combobox('getValue');

        $.ajax({
            url: 'http://172.10.1.100:8080/ECYS-CP/get-user?accion=7',
            metod: 'GET',
            data: {id_usuario: seleccionado.id_usuario, id_estado: nuevo_estado},
            success: function (data, textStatus, jqXHR) {
                try {
                    var resultado = JSON.parse(data);
                    reiniciarTablaUsuariosAdmin_Admin();
                    $('#window_cambio_estado_administracion_usuarios').window('close');
                    $('#form_cambio_estado').form('reset');
                    $.messager.alert({
                        title: 'Cambio de Estado Usuarios Administrativos',
                        msg: '<p style="text-align: center;"><b>' + resultado.mensaje + '</b></p>',
                        showType: 'slide'
                    });
                } catch (e) {
                    $.messager.alert({
                        title: 'Cambio de Estado Usuarios Administrativos',
                        msg: '<p style="text-align: center;"><b>Error, el servidor no esta retornando una respuesta correcta.</b></p>',
                        showType: 'slide'
                    });
                }
            }
        })
    } else {
        $.messager.alert({
            title: 'Cambio de Estado Usuarios Administrativos',
            msg: '<p style="text-align: center;"><b>Error, debe seleccionar una opción de nuevo tipo de estado.</b></p>',
            showType: 'slide'
        });
    }
}

function administracionUsuarios_Cambiar_Estado() {

    var seleccionado = $('#dg_usuarios_admin_administrivos').datagrid('getSelected');

    if (seleccionado) {
        console.log(seleccionado);
        var dlg = $.messager.confirm({
            title: 'Confirm',
            msg: '<p style="text-align:center;">¿Esta seguro de cambiar el estado del usuario administrativo seleccionado?</p>',
            buttons: [{
                    text: 'Aceptar',
                    onClick: function () {

                        dlg.dialog('destroy');
                        $('#window_cambio_estado_administracion_usuarios').window('open');

                    }
                }, {
                    text: 'Cancelar',
                    onClick: function () {
                        dlg.dialog('destroy');
                    }
                }]
        });

    } else {
        $.messager.alert({
            title: 'Cambio de Estado Usuarios Administrativos',
            msg: '<p style="text-align: center;"><b>Error, debe seleccionar un usuario.</b></p>',
            showType: 'slide'
        });
    }
}

function confirmar_Cambio_Tipo_Usuario_Administracion()
{
    var listo = $('#form_cambio_tipo_usuario').form('validate');

    if (listo) {
        var seleccionado = $('#dg_usuarios_admin_administrivos').datagrid('getSelected');
        var nuevo_estado = $('#cmb_tipo_usuario_cambio_tipo').combobox('getValue');

        $.ajax({
            url: 'http://172.10.1.100:8080/ECYS-CP/get-user?accion=8',
            metod: 'GET',
            data: {id_usuario: seleccionado.id_usuario, id_tipo_usuario: nuevo_estado},
            success: function (data, textStatus, jqXHR) {
                try {
                    var resultado = JSON.parse(data);
                    reiniciarTablaUsuariosAdmin_Admin();
                    $('#window_cambio_tipo_usuario_administracion_usuarios').window('close');
                    $('#form_cambio_tipo_usuario').form('reset');
                    $.messager.alert({
                        title: 'Cambio de Estado Usuarios Administrativos',
                        msg: '<p style="text-align: center;"><b>' + resultado.mensaje + '</b></p>',
                        showType: 'slide'
                    });
                } catch (e) {
                    $.messager.alert({
                        title: 'Cambio de Tipo de Usuarios Administrativos',
                        msg: '<p style="text-align: center;"><b>Error, el servidor no esta retornando una respuesta correcta.</b></p>',
                        showType: 'slide'
                    });
                }
            }
        })
    } else {
        $.messager.alert({
            title: 'Cambio de Tipo de Usuarios Administrativos',
            msg: '<p style="text-align: center;"><b>Error, debe seleccionar una opción de nuevo tipo de usuario.</b></p>',
            showType: 'slide'
        });
    }
}

function administracionUsuarios_Cambiar_Tipo_Usuario() {
    var seleccionado = $('#dg_usuarios_admin_administrivos').datagrid('getSelected');

    if (seleccionado) {
        console.log(seleccionado);
        var dlg = $.messager.confirm({
            title: 'Confirm',
            msg: '<p style="text-align:center;">¿Esta seguro de cambiar el tipo de usuario administrativo seleccionado?</p>',
            buttons: [{
                    text: 'Aceptar',
                    onClick: function () {

                        dlg.dialog('destroy');
                        $('#window_cambio_tipo_usuario_administracion_usuarios').window('open');

                    }
                }, {
                    text: 'Cancelar',
                    onClick: function () {
                        dlg.dialog('destroy');
                    }
                }]
        });

    } else {
        $.messager.alert({
            title: 'Cambio de Tipo de Usuario Administrativos',
            msg: '<p style="text-align: center;"><b>Error, debe seleccionar un usuario.</b></p>',
            showType: 'slide'
        });
    }
}

function reiniciarTablaUsuariosAdmin_Admin() {
    $('#dg_usuarios_admin_administrivos').datagrid('loadData', []);
    $.getJSON('http://172.10.1.100:8080/ECYS-CP/get-user', {accion: 0}, function (resultado) {
        $('#dg_usuarios_admin_administrivos').datagrid('loadData', resultado);
    });
}
