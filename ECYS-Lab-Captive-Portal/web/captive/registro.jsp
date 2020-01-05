<%-- 
    Document   : registro
    Created on : 29/10/2019, 06:03:35 PM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title> ECYS - Portal Cautivo </title>

        <link rel="shortcut icon" href="images/fav.jpg">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/fontawsom-all.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css" />

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/script.js"></script>

        <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
        <link rel='stylesheet' type="text/css" href="themes/gray/easyui.css">
        <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script src="js/jquery-ui.js" type="text/javascript"></script>
        <script src="js/easyui/jquery.easyui.min.js" type="text/javascript"></script>

        <script src="captive/registro.js" type="text/javascript"></script>

        <style>
            body{
                background-image: url("../images/fondo.jpg");
            }
        </style>

    </head>

    <body>
        <script>
            $.getJSON('http://172.10.1.100:8080/ECYS-CP/reg-contr', {}, function (respuesta) {
                $('#txt_reg_carrera').combobox({
                    data : respuesta,
                    editable:false,
                    valueField:'id_carrera',
                    textField:'descripcion'
                });
            });
        </script>

        <form class="container-fluid" method="post" id="reg_cap_formulario">
            <div class="container ">
                <div class="row cdvfdfd">
                    <div class="col-lg-10 col-md-12 login-box">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 log-det">

                                <div class="small-logo">
                                    <i class="fab fa-asymmetrik"></i> LABORATORIOS ECYS
                                </div>
                                <div class="center">
                                    <img src="images/logo.png" style="width: 20%; background: orange; border-radius: 50%;" >
                                </div>
                                <hr>
                                <div class="small-text">
                                    <i class="fab fa-asymmetrik"></i> Portal Cautivo
                                </div>
                                <p class="dfmn">Ingrese sus datos para obtener acceso a la red Wifi de los laboratorios</p>

                                <div class="easyui-form">
                                    <hr>
                                    <input class="easyui-numberbox" id="txt_reg_carnet" style="width: 100%; text-align: center; " data-options="precision:0,prompt:'Carnet',required:true,message:'Ingrese su numero de carnet estudiantil..',missingMessage:'Ingrese su carnet...'"  >
                                    <br>
                                    <br>                
                                    <input class="easyui-textbox" id="txt_reg_nombre" style="width: 100%; text-align: center; " data-options="prompt:'Nombre',required:true,message:'Ingrese su nombre..',missingMessage:'Ingrese su nombre...'"  >
                                    <br>
                                    <br>
                                    <input class="easyui-textbox" id="txt_reg_apellido" style="width: 100%; text-align: center; " data-options="prompt:'Apellido',required:true,missingMessage:'Ingrese su apellido...'">
                                    <br>
                                    <input class="easyui-datebox" id="txt_reg_fecha" label="Fecha nacimiento:" labelPosition="top" data-options="editable:false, required:true, missingMessage:'Seleccione una fecha'" style="width:100%; text-align: center;">
                                    <br>
                                    <select class="easyui-combobox" id="txt_reg_carrera" label='Carrera' labelPosition="top" style="width: 100%; font-family: inherit; text-align: left;" 
                                            >
                                        <!--option selected value="0"> Seleccionar.. </option>
                                        <option value="1"> Ingenieria Civil </option>
                                        <option value="2"> Ingenieria Química </option>
                                        <option value="5"> Ingeniería Industrial </option>
                                        <option value="4"> Ingeniería Electrica </option>
                                        <option value="3"> Ingeniería Mecánica </option>
                                        <option value="6"> Ingeniería Mecánica Eléctrica </option>
                                        <option value="7"> Ingeniería Mecánica Industrial </option>
                                        <option value="9"> Ingeniería en Ciencias y Sistemas </option>
                                        <option value="13"> Ingeniería Electrónica </option>
                                        <option value="35"> Ingeniería Ambiental </option-->
                                    </select>
                                    <br>
                                    <br>
                                    <input style="text-align:center; width: 100%;" id="txt_reg_correo" class="easyui-textbox" data-options="required: true,validType: 'email',prompt:'Correo Electronico',missingMessage:'Ingrese su correo electronico',invalidMessage:'Correo invalido...'" >
                                    <br>
                                    <hr>
                                    <div class="input-group center">
                                        <a class="easyui-linkbutton btn btn-secondary btn-round" onclick="saveNewUser()">REGISTRARSE</a>
                                    </div> 
                                    <div class="row">
                                        <p class="small-info">Conectate con nosotros</p>
                                    </div>   
                                </div>

                                <div class="row">
                                    <ul>
                                        <li><i class="fab fa-facebook-f"></i></li>
                                        <li><i class="fab fa-twitter"></i></li>
                                        <li><i class="fab fa-linkedin-in"></i></li>
                                    </ul>
                                </div>

                            </div>

                            <div class="col-lg-6 col-md-6 box-de">
                                <div class="inn-cover">
                                    <div class="ditk-inf center">
                                        <h2 class="w-100"> No se ha registrado aún, debe realizar un primer registro para poder acceder a la red de internet inalambrico </h2>
                                        <p>Despues de su registro recuerde que podrá ingresar unicamente con su número de carnet.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>


    </body>


</html>
