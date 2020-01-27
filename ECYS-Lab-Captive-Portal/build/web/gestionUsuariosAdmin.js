$(function () {

    var data_administradores = $('#dg_usuarios_administrativos').datagrid({
        singleSelect: true,
        collapsible: true,
        url: 'http://172.10.1.100:8080/ECYS-CP/get-user?accion=0',
        pagination: true,
        clientPaging: true,
        checkOnSelect: true,
        selectOnCheck: true,
        rownumbers: true,
        fitColumns: true,
        nowrap: false,
        method: 'get',
        toolbar: '#ft1',
        title: 'Listado de Usuarios Administrativos'
    });

    data_administradores.datagrid('enableFilter');

    var datagrid_red = $('#dg_usuarios_red_gestion').datagrid({
        singleSelect: true,
        collapsible: true,
        pagination: true,
        clientPaging: true,
        checkOnSelect: true,
        selectOnCheck: true,
        rownumbers: true,
        nowrap: false,
        fitColumns: true,
        toolbar: '#ft2',
        title: 'Listado de Usuarios de la Red',
        url: 'http://172.10.1.100:8080/ECYS-CP/get-user?accion=9',
        method: 'get',
        onDropColumn: function(){
                    $(this).datagrid('clientPaging')
                    $(this).datagrid('reload');
                }
    });

    datagrid_red.datagrid('enableFilter');
    datagrid_red.datagrid('load','http://172.10.1.100:8080/ECYS-CP/get-user?accion=9')

});

function eliminarUsuarioRed() {

    var usuarioRed = $('#dg_usuarios_red_gestion').datagrid('getSelected');
    if (usuarioRed) {


        $.messager.alert({
            title: 'Confirmación de eliminación',
            msg: '<p style="text-weight:bold; text-align:center;">Presione "OK" si desea eliminar el usuario o cierre esta ventana si desea cancelar la eliminación!</p>',
            icon: 'info',
            fn: function () {
                $.ajax({
                    url: 'http://172.10.1.100:8080/ECYS-CP/get-user?accion=10',
                    data: {id_usuario: usuarioRed.id_usuario, no_carnet: usuarioRed.carnet},
                    success: function (data, textStatus, jqXHR) {
                        try {

                            var resultado_eliminacion = JSON.parse(data);
                            if (resultado_eliminacion[0].resultado === "1" && resultado_eliminacion[1].resultado === "1") {
                                $('#dg_usuarios_red_gestion').datagrid('reload');
                                $.messager.alert('Eliminacion de Usuario', '<p style="text-align:center;">Se eliminó exitosamente al usuario de la red <br><b>El usuario tendrá que registrarse nuevamente en el siguiente intento de acceso a la red.</b>.</p>', 'info');
                            } else {
                                $.messager.alert('Error', 'Error en registro de eliminación, por favor comunicarse con el administrador del sistema.', 'error');
                            }

                        } catch (e) {
                            $.messager.alert('Error', 'Error en la respuesta del servidor.', 'error');
                        }
                    }
                });
            }
        });
    } else {
        $.messager.alert('Error', 'Debe seleccionar un usuario para eliminar.', 'warning');
    }

}

function reiniciarTablaUsuariosAdmin() {
    $('#dg_usuarios_administrativos').datagrid('loadData', []);
    $.getJSON('http://172.10.1.100:8080/ECYS-CP/get-user', {accion: 0}, function (resultado) {
        $('#dg_usuarios_administrativos').datagrid('loadData', resultado);
    });
}

function cerrarReiniciarFormularioRegistro() {
    $('#form_gestion_usuarios_nuevo').form('reset');
    $('#window_gestion_usuarios_nuevo').window('close');
}


function agregarUsuarioAdmin() {
    $('#form_gestion_usuarios_nuevo').form('reset');
    $('#window_gestion_usuarios_nuevo').window('open');
}

function eliminarUsusario() {

    var seleccionado = $('#dg_usuarios_administrativos').datagrid('getSelected');

    if (seleccionado) {
        console.log(seleccionado);
        var dlg = $.messager.confirm({
            title: 'Confirm',
            msg: 'Esta seguro de eliminar el usuario administrativo',
            buttons: [{
                    text: 'Aceptar',
                    onClick: function () {

                        $.ajax({
                            url: 'http://172.10.1.100:8080/ECYS-CP/get-user?accion=6',
                            method: 'GET',
                            data: {id_usuario: seleccionado.id_usuario},
                            success: function (data, textStatus, jqXHR) {
                                try {
                                    var resultado = JSON.parse(data);
                                    reiniciarTablaUsuariosAdmin();
                                    dlg.dialog('destroy');
                                    $.messager.alert({
                                        title: 'Eliminacion Usuarios Administrativos',
                                        msg: '<p style="text-align: center;"><b>' + resultado.mensaje + '</b></p>',
                                        showType: 'slide'
                                    });
                                } catch (e) {
                                    $.messager.alert({
                                        title: 'Eliminacion Usuarios Administrativos',
                                        msg: '<p style="text-align: center;"><b>Error, el servidor no esta retornando una respuesta correcta.</b></p>',
                                        showType: 'slide'
                                    });
                                }
                            }
                        })

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
            title: 'Eliminacion Usuarios Administrativos',
            msg: '<p style="text-align: center;"><b>Error, debe seleccionar un usuario.</b></p>',
            showType: 'slide'
        });
    }

}

function guardarNuevoUsuario() {

    var contrasena1 = $('#txt_gestion_usuario_contraseña').passwordbox('getValue');
    var contrasena2 = $('#txt_gestion_usuario_contraseña_confirm').passwordbox('getValue');

    if (contrasena1 == contrasena2) {

        var resultado = $('#form_gestion_usuarios_nuevo').form('validate');

        if (resultado) {

            var nombre = $('#txt_gestion_usuario_nombre').textbox('getValue');
            var correo = $('#txt_gestion_usuario_correo').textbox('getValue');
            var descripcion = $('#txt_gestion_usuario_descripcion').textbox('getValue');

            var tipo_usuario = $('#txt_gestion_usuario_tipo_usuario').combobox('getValue');
            var estado = $('#txt_gestion_usuario_estado').combobox('getValue');

            $.ajax({
                url: 'http://172.10.1.100:8080/ECYS-CP/get-user?accion=5',
                metod: 'GET',
                data: {nombre: nombre, correo: correo, descrip: descripcion, tipo_user: tipo_usuario, estado: estado, contrasena: contrasena1},
                success: function (data, textStatus, jqXHR) {
                    try {
                        var resultado = JSON.parse(data);
                        reiniciarTablaUsuariosAdmin();
                        cerrarReiniciarFormularioRegistro();
                        $.messager.alert({
                            title: 'Registro Usuarios Administrativos',
                            msg: '<p style="text-align: center;"><b>' + resultado.mensaje + '</b></p>',
                            showType: 'slide'
                        });
                    } catch (e) {
                        $.messager.alert({
                            title: 'Registro Usuarios Administrativos',
                            msg: '<p style="text-align: center;"><b>Error, el servidor no esta retornando una respuesta correcta.</b></p>',
                            showType: 'slide'
                        });
                    }
                }
            });
        } else {
            $.messager.alert({
                title: 'Registro Usuarios Administrativos',
                msg: '<p style="text-align: center;"><b>Error, no se ha completado la información de registro.</b></p>',
                showType: 'slide'
            });
        }

    } else {
        $.messager.alert({
            title: 'Registro Usuarios Administrativos',
            msg: '<p style="text-align: center;"><b>Error, las contraseñas no coinciden.</b></p>',
            showType: 'slide'
        });
    }

}