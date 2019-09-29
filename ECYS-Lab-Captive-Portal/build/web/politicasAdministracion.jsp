<%-- 
    Document   : politicasAdministracion
    Created on : 29/09/2019, 03:04:15 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link href="css/GUI/generales.css" type="text/javascript" rel="stylesheet">
<link href="css/GUI/politicasAdministracion.css" type="text/javascript" rel="stylesheet">
<script src="politicasAdministracion.js" type="text/javascript"></script>

<div class="container">
    <div class="row">
        <div class="col" align="center">
            <h5 style="font-weight: bold;"> Politicas </h5>
        </div>
    </div>
    <hr style="margin-top: -5px;">
    <div class="row">
        <div class="container panel_general">
            <div class="row panel_reporte">

                <ul class="nav nav-pills panel_header" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" id="pill_menu1" data-toggle="pill" href="#" onclick="cargaMenu(1)">Administración de Acceso a Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="pill_menu2" data-toggle="pill" href="#" onclick="cargaMenu(2)">Gestión de Direcciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="pill_menu3" data-toggle="pill" href="#" onclick="cargaMenu(3)">Gestión de Dominios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="pill_menu4" data-toggle="pill" href="#" onclick="cargaMenu(4)">Gestión por Tipo de Tráfico</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="pill_menu5" data-toggle="pill" href="#" onclick="cargaMenu(5)">Gestión de Aplicaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="pill_menu6" data-toggle="pill" href="#" onclick="cargaMenu(6)">Gestión de Puertos</a>
                    </li>
                </ul>               
                <div class="tab-content">
                    <div id="menu1" class="container tab-pane fade"><br>
                    </div>
                    <div id="menu2" class="container tab-pane fade"><br>
                    </div>
                    <div id="menu3" class="container tab-pane fade"><br>
                    </div>
                    <div id="menu4" class="container tab-pane fade"><br>
                    </div>
                    <div id="menu5" class="container tab-pane fade"><br>
                    </div>
                    <div id="menu6" class="container tab-pane fade"><br>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</div>
