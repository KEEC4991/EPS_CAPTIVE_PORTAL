<%-- 
    Document   : gestionUsuariosAdmin
    Created on : 26/09/2019, 03:59:38 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link type="text/css" href="css/GUI/gestionUsuariosAdmin.css" rel="stylesheet">
<link type="text/css" href="css/bootstrap-table.min.css" rel="stylesheet">
<script src="js/bootstrap-table.min.js"></script>

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
                            <p style="font-weight: bold;">Usuarios Administrativos</p>
                            
                            <table 
                                data-toggle="table" 
                                id="tablaUsuarios" 
                                name="tablaUsuarios" 
                                width="100%" 
                                data-pagination="true" 
                                data-search="true"
                                data-pagination-loop="true"
                                show-button-icons="true"
                                data-show-search-clear-button="true"
                                data-show-header="true"
                                data-show-footer="true"
                                data-show-pagination-switch="true"
                                data-show-refresh="true"
                                data-show-toggle="true"
                                data-show-fullscreen="true"
                                data-single-select="true"
                                >
                                <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Correo Electronico</th>
                                        <th>Nivel Privilegios</th>
                                        <th>Estado</th>
                                        <th>Fecha Registro</th>
                                        <th>Fecha Ultimo Ingreso</th>
                                    </tr>
                                </thead>
                                <!--tfoot>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Extn.</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </tfoot-->
                            </table>
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
        </div>
        <hr>
    </div>
</div>
<br>
<hr>


<!-- SEGUNDA SECCION -->
<div class="row">
    <div class="col">
        <h4><b>Detalle de Usuarios de la Red</b></h4>
    </div>
</div>

<script src="gestionUsuariosAdministrador.js" type="text/javascript"></script>


