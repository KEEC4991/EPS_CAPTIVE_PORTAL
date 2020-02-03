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
        <meta content="width=device-width, maximum-scale=1, minimum-scale=1, initial-scale=1" name="viewport" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        
        <title>Ingreso Modulo Administrativo</title>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/core/jquery.min.js"></script>

        <link type="text/css" href="css/GUI/login.css" rel="stylesheet">
        
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
                <div class="col region_login" style="width: 50vh; height: auto; padding: 10px; border-radius: 10px; border: solid 1px orange; color: white;" align='center'>
                    <div style="height: 100%;">
                        <div style="height: 30%;">
                            <img src="images/logo.png" style="width: 20%; ; border-radius: 50%; background-color: orange;" >
                        </div>
                        <div class="container" style="height: 60%; background-color: white; color: #333333; width: 100%; border-radius: 10px;">
                            <div class="row">
                                <div class="col" style="padding: 10px;">
                                    <p style="font-weight: bold; color: #666666;">Portal Cautivo - ECYS LAB</p>
                                    <hr>
                                    <p style="font-weight: bold; color: #666666;">Modulo Administrativo</p>
                                    <div class="easyui-panel" title='<b>Ingrese sus credenciales de usuario: </b>' align='center' style="padding: 20px; margin-top: -5px;">
                                        <input id='txt_login_usuario_id' class="easyui-numberbox" data-options="prompt:'ID de Usuario',iconCls:'icon-man',required:true,missingMessage:'Ingrese su ID númerico de usuario.'" style="text-align: center; width: 80%;" />
                                        <br>
                                        <input id='txt_login_usuario_pw' class="easyui-passwordbox" data-options="prompt:'Contraseña',required:true,missingMessage:'Puede visualizar su contraseña mientras la escribe.'" style="text-align: center; width: 80%;" />
                                        <hr style="margin-top: 15px;">
                                        <a id="btn" href="#" class="easyui-linkbutton" style="width: 100%; margin-top: 10px; height: 50px;" data-options="iconCls:'icon-ok',iconAlign:'right'" onclick="verificarCredenciales()"><b>INGRESAR</b></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
        </script>
    </body>
</html>


