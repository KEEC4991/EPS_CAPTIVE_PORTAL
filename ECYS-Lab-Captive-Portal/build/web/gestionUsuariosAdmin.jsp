<%-- 
    Document   : gestionUsuariosAdmin
    Created on : 26/09/2019, 03:59:38 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link type="text/css" href="css/GUI/gestionUsuariosAdmin.css" rel="stylesheet">

<div class="container">
    <div class="row">
        <div class="col" align="center">
            <h5 style="font-weight: bold;">Gestión de Usuarios</h5>
        </div>
    </div>
    <hr style="margin-top: -5px;">
    <div class="row">
        <div class="container">
            <div class="row">
                <div class="col panel_general">
                    <div class="container">
                        <div class="row panel_reporte">
                            <div style="width:100%">
                                <p style="font-weight: bold; width: 100%">Usuarios Administrativos</p>    
                            </div>
                            <div style="width: 100%">
                                <table id="tabla_usuarios_administrativos" style="width: 100%">
                                </table>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col panel_reporte">
                                <p style="font-weight: bold;">Usuarios de la Red</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col panel_general">
                </div>
            </div>
        </div>
        <hr>
    </div>
</div>
<br>

<script src="gestionUsuariosAdministrador.js" type="text/javascript"></script>


