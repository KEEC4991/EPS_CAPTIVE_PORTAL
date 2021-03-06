<%-- 
    Document   : inicio
    Created on : 29/10/2019, 06:03:27 PM
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
        <link rel='stylesheet' type="text/css" href="themes/metro/easyui.css">
        <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script src="js/jquery-ui.js" type="text/javascript"></script>
        <script src="js/easyui/jquery.easyui.min.js" type="text/javascript"></script>
        
        <script src="captive/inicio.js" type="text/javascript"></script>
        

        <style>
            body{
                background-image: url("../images/fondo.jpg");
            }
        </style>

    </head>

    <body>
        <form class="container-fluid " id="formulario_inicio" method="post">
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

                                <div class="text-box-cont">
                                    <hr>
                                    
                                    <input class="easyui-numberbox" id="txt_ingreso_carnet" data-options="precision:0,prompt:'Número de Carnet',required:true" style="text-align: center; width: 100%;" >
                                    <br>
                                    <br>
                                    <div class="input-group center">
                                        <a class="easyui-linkbutton btn btn-secondary btn-round" onclick="access_validation()">Ingresar</a>
                                        <a class="easyui-linkbutton btn btn-secondary btn-round" onclick="redirect_reg()()">Registrarse</a>
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
                                        <h4 class="w-100"> Su dispositivo ya se encuentra registrado, por favor unicamente ingrese su número de carnet para tener acceso a la red inalámbrica. </h4>
                                        <p>Recuerde usar de manera responsable los recursos disponibles dentro del laboratorio y cumplir con las reglas de uso !</p>
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
