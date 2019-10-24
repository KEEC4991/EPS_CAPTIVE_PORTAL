<%-- 
    Document   : login
    Created on : 21/10/2019, 03:30:33 AM
    Author     : kgmt4
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso Modulo Administrativo</title>
        <link type="text/css" href="css/GUI/login.css" rel="stylesheet">


        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/core/jquery.min.js"></script>
        <script src="js/jquery-ui.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="themes/gray/easyui.css">
        <link rel="stylesheet" type="text/css" href="themes/icon.css">
        <script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
        <script type="text/javascript" src="js/easyui/datagrid-filter.js"></script>
        <script src="login.js" type="text/javascript"></script>

    </head>
    <body style="height: 100vh;">
        <div class="container" style="width: 100%; height: 100%;" align='center'>
            <div class="row" style="width: 100%; height: 100%; padding-top: 10%;" align='center'>
                <div class="col region_login" style="width: 30%; height: content-box; padding: 10px; border-radius: 10px; border: solid 1px orange; color: white;" align='center'>
                    <div style="height: 100%;">
                        <div style="height: 30%;">
                            <img src="images/logo.png" style="width: 20%; ; border-radius: 50%; background-color: orangered;" >
                        </div>
                        <div class="container" style="height: 60%; background-color: white; color: #333333; width: 100%; border-radius: 10px;">
                            <div class="row">
                                <div class="col" style="padding: 10px;">
                                    <p style="font-weight: bold; color: #666666;">Portal Cautivo - ECYS LAB</p>
                                    <hr>
                                    <p style="font-weight: bold; color: #666666;">Modulo Administrativo</p>
                                    <div class="easyui-panel" title='<p style="font-weight: bold; text-align: left; font-size: 11px;">Ingrese sus credenciales de usuario: </p>' align='center' style="padding: 20px; margin-top: -5px;">

                                        <input id='txt_login_usuario_id' class="easyui-numberbox" data-options="prompt:'ID de Usuario',iconCls:'icon-man',required:true" style="text-align: center; width: 50%;" />
                                        <a href="#" title="El id debe ser númerico..." class="easyui-tooltip">?</a><br>

                                        <input id='txt_login_usuario_pw' class="easyui-passwordbox" data-options="prompt:'Contraseña',required:true" style="text-align: center; width: 50%;" />
                                        <a href="#" title="Puede presionar el icono para ver la contraseña mientras la escribe..." class="easyui-tooltip">?</a><br>

                                        <hr style="margin-top: 15px;">
                                        <a id="btn" href="#" class="easyui-linkbutton" style="width: 100%; margin-top: 10px;" data-options="iconCls:'icon-search',iconAlign:'right'" onclick="verificarCredenciales()"><b>INGRESAR</b></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
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
                                $.messager.alert({
                                    title: 'Ingreso Administrativo',
                                    msg: '<p style="text-align: center;"><b>Bienvenido!!</b></p>',
                                    showType: 'slide',
                                    fn: function () {
                                        sessionStorage.setItem('id_usuario', data.id_usuario);
                                        sessionStorage.setItem('nombre_usuario', data.nombre_usuario);
                                        sessionStorage.setItem('correo', data.correo);
                                        sessionStorage.setItem('descripcion', data.descripcion);
                                        sessionStorage.setItem('fecha_con', data.fecha_con);
                                        sessionStorage.setItem('fecha_reg', data.fecha_reg);
                                        sessionStorage.setItem('estado', data.estado);
                                        sessionStorage.setItem('tipo', data.tipo);
                                        
                                        window.location.href = 'http://127.0.0.1:8080/ECYS-CP/';
                                        
                                    }
                                });
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
        </script>
    </body>
</html>


