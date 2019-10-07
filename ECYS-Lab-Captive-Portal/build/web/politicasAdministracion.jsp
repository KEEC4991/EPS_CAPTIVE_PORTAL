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

<div class="container-fluid">
    <div class="row" >
        <div class="col" align="center">
            <h5 style="font-weight: bold;"> Politicas </h5>
        </div>
    </div>
    <hr style="margin-top: -5px;">
    <div class="row">
        <div class="col">
            <div class="panel_general" style="display: inline-block; width: 25%; float: left;">
                <span class="badge badge-danger badge-pill" style="margin-right: 1%;" >-</span>
                <button type="button" class="btn btn-warning" style="width: 75%;" onclick="cargaMenu(1)">Administración de Acceso a Usuarios</button>
                <br>
                <span class="badge badge-danger badge-pill" style="margin-right: 1%;" >-</span>
                <button type="button" class="btn btn-warning" style="width: 75%;" onclick="cargaMenu(2)">Gestión de Direcciones</button>
                <br>
                <span class="badge badge-danger badge-pill" style="margin-right: 1%;" >-</span>
                <button type="button" class="btn btn-warning" style="width: 75%;" onclick="cargaMenu(3)">Gestión de Dominios</button>
                <br>
                <span class="badge badge-danger badge-pill" style="margin-right: 1%;" >-</span>
                <button type="button" class="btn btn-warning" style="width: 75%;" onclick="cargaMenu(4)">Gestión por Tipo de Tráfico</button>
                <br>
                <span class="badge badge-danger badge-pill" style="margin-right: 1%;" >-</span>
                <button type="button" class="btn btn-warning" style="width: 75%;" onclick="cargaMenu(5)">Gestión de Aplicaciones</button>
                <br>
                <span class="badge badge-danger badge-pill" style="margin-right: 1%;" >-</span>
                <button type="button" class="btn btn-warning" style="width: 75%;" onclick="cargaMenu(6)">Gestión de Puertos</button>
                <br>
            </div>
            <div class="panel_reporte" style="display: inline-block; width: 25%;">
                <div id="menu_general_politicas" style="width: 100%; height: auto;">
                </div>
            </div>
        </div>
    </div>
</div>

</div>
