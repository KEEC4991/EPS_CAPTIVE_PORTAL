$(function () {
    var data_administradores = $('#dg_usuarios_administrativos').datagrid({
        singleSelect: true,
        collapsible: true,
        url: 'http://127.0.0.1:8080/ECYS-CP/get-user?accion=0',
        pagination: true,
        clientPaging: true,
        checkOnSelect: true,
        selectOnCheck: true,
        rownumbers: true,
        nowrap: false,
        method: 'get',
        toolbar: '#ft1',
        title: 'Listado de Usuarios Administrativos'
    });
    data_administradores.datagrid('enableFilter');
});

function reiniciarTablaUsuariosAdmin() {
    $('#dg_usuarios_administrativos').datagrid('loadData', []);
    $.getJSON('http://127.0.0.1:8080/ECYS-CP/get-user', {accion: 0}, function (resultado) {
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
                            url: 'http://127.0.0.1:8080/ECYS-CP/get-user?accion=6',
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
                url: 'http://127.0.0.1:8080/ECYS-CP/get-user?accion=5',
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