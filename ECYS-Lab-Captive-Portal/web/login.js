/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function verificarCredenciales() {
    $.ajax({
        url: 'http://127.0.0.1:8080/ECYS-CP/auth-log?accion=1',
        data: {id_usuario: $('#txt_login_usuario_id').numberbox('getValue'), passwd: $('#txt_login_usuario_pw').passwordbox('getValue')},
        method: 'GET',
        success: function (data, textStatus, jqXHR) {
            try {
                var data = JSON.parse(data);
                if (data.length >= 1) {
                    data = data[0];

                    if (data.estado == 3) {
                        $.messager.alert('Ingreso usuarios administrativos', '<p style="font-weight:bold; text-align:center; color:red;">El Usuario: ' + data.nombre_usuario + ', se encuentra bloqueado.</p><br><p style="text-align:center;"> Comuníquese con un administrador del sistema para habilitar el usuario nuevamente.</p>')
                    } else {

                        $.messager.alert({
                            title: 'Ingreso Administrativo',
                            msg: '<p style="text-align: center;"><b>Bienvenido!!</b></p>',
                            showType: 'slide',
                            iconCls: 'icon-tip',
                            icon: 'info',
                            fn: function () {
                                sessionStorage.setItem('id_usuario', data.id_usuario);
                                sessionStorage.setItem('nombre_usuario', data.nombre_usuario);
                                sessionStorage.setItem('correo', data.correo);
                                sessionStorage.setItem('descripcion', data.descripcion);
                                sessionStorage.setItem('fecha_con', data.fecha_con);
                                sessionStorage.setItem('fecha_reg', data.fecha_reg);
                                sessionStorage.setItem('estado', data.estado);
                                sessionStorage.setItem('tipo', data.tipo);

                                location.replace('http://127.0.0.1:8080/ECYS-CP/adm-cap');
                            }
                        });
                    }

                } else {
                    $.messager.alert({
                        title: 'Ingreso Administrativo',
                        msg: '<p style="text-align: center;"><b>Error, credenciales incorrectas.</b></p>',
                        showType: 'slide'
                    });
                }
            } catch (e) {
                $.messager.alert({
                    title: 'Ingreso Administrativo',
                    msg: '<p style="text-align: center;"><b>Error, credenciales incorrectas.</b></p>',
                    showType: 'slide'
                });
            }
        }
    });
}

