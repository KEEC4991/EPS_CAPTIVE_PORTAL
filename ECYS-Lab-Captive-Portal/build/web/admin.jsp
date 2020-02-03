<%-- 
    Document   : admin
    Created on : 26/09/2019, 01:41:20 AM
    Author     : kgmt4
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


        <title> ADMIN ECYS - Portal Cautivo </title>


        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/core/jquery.min.js"></script>


        <link rel="shortcut icon" href="images/logo.png">
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="css/css.css"/>
        <link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet"/>

        <link href="css/jquery-ui.css" rel="stylesheet" />

        <script src="admin.js" type="text/javascript"></script>

        <script src="js/jquery-ui.js"></script>


        <link rel="stylesheet" type="text/css" href="themes/gray/easyui.css">
        <link rel="stylesheet" type="text/css" href="themes/icon.css">
        <script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
        <script type="text/javascript" src="js/easyui/datagrid-filter.js"></script>
        
        <script src="plugins/cchart/Chart.bundle.js" ></script>
        <script src="plugins/cchart/Chart.bundle.min.js"></script>
        <link rel="stylesheet" href="plugins/cchart/Chart.css" />
        <script src="plugins/cchart/Chart.js"></script>
        <link rel="stylesheet" href="plugins/cchart/Chart.min.css" />
        <script src="plugins/cchart/Chart.min.js"></script>
        
        <script src="politicasContenedor/generalesGestion.js" type="text/javascript"></script>

    </head>
    <body style="height: 100vh;">

        <div class="wrapper" style="height:  97%;">
            <div class="sidebar" data-color="orange" data-background-color="black" data-image="images/fondo.jpg" style="height: 100%;">
                <div class="logo">
                    <a href="#" class="simple-text logo-normal">
                        - Portal Cautivo -<br>
                        ECYS<br>
                        <img src="images/logo.png" style="width: 30%; ; border-radius: 50%;" onclick="cambioPanel(1)" >
                    </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(6)">
                                <i class="material-icons">dashboard</i>
                                <p>Dashboard Administrativo</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(2)">
                                <i class="material-icons">assessment</i>
                                <p>Reportes</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(3)">
                                <i class="material-icons">supervised_user_circle</i>
                                <p>Gestion de Usuarios</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(4)">
                                <i class="material-icons">verified_user</i>
                                <p>Politicas</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(5)">
                                <i class="material-icons">highlight_off</i>
                                <p>Cerrar Sesión</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(7)" style="background-color: black;">
                                <i class="material-icons">face</i>
                                <p>Cuenta</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="main-panel" style="height: 100%;">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <!--a class="navbar-brand" href="javascript:void(0)"><b>Administrador</b></a-->
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index"  aria-label="Toggle navigation">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(){$('.alert').alert();}">
                                        <i class="material-icons">notifications</i>
                                        <p class="d-lg-none d-md-block">
                                            Notifications
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <!-- End Navbar -->

                <!-- PANELES DE TIPOS -->

                <div class="content"  style="height:  90%; margin-top: 0px;" >
                    <div class="container-fluid" id="bodyAdministrador"  style="height:  100%;">

                    </div>
                </div>

            </div>

        </div>

        <script src="assets/js/core/popper.min.js"></script>
        <script src="assets/js/core/bootstrap-material-design.min.js"></script>
        <script src="js/index.js"></script>
        <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>

        <script src="js/buttons.js" type="text/javascript"></script>

        <script src="assets/js/plugins/chartist.min.js"></script>

        <script src="assets/js/plugins/bootstrap-notify.js"></script>

        <script src="assets/js/material-dashboard.js?v=2.1.0"></script>



    </body>
</html>
