<%-- 
    Document   : my-admin
    Created on : 26/09/2019, 02:31:49 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>

    .panel_informativo{
        background-color: #312f2f;
        color:white;
        border-radius: 5px;
        padding: 20px 20px 20px 20px;
    }

</style>
<hr>
<br>
<div>
    <div class="container">
        <div class="row">
            <div class="col panel_informativo">
                <p style="font-weight: bold;">Funcionalidad:</p>
                <div style="padding-left: 20px;">
                    <ul>
                        <li>
                            <button type="button" class="btn btn-warning" style="width: 50%;" onclick="cambioPanel(6)">Dashboard Administrativo</button><br>
                            <p><span class="badge badge-danger badge-pill" style="margin-right: 1%;">-</span>Panel de monitorización de recursos.</p>
                        </li>
                        <li>
                            <button type="button" class="btn btn-warning" style="width: 50%;" onclick="cambioPanel(2)">Reportes</button><br>
                            <p><span class="badge badge-danger badge-pill" style="margin-right: 1%;">-</span>Reportes de los recuros y módulo administrativo.</p>
                        </li>
                        <li>
                            <button type="button" class="btn btn-warning" style="width: 50%;" onclick="cambioPanel(3)">Gestión de Usuarios</button><br>
                            <p><span class="badge badge-danger badge-pill" style="margin-right: 1%;">-</span>Gestiòn de usuarios de la red y del módulo administrativo.</p>
                        </li>
                        <li>
                            <button type="button" class="btn btn-warning" style="width: 50%;" onclick="cambioPanel(4)">Politicas</button><br>
                            <p> <span class="badge badge-danger badge-pill" style="margin-right: 1%;">-</span>
                                Adminsitración de políticas de acceso a la red.
                            </p>
                        </li>
                        <li>
                            <button type="button" class="btn btn-warning" style="width: 50%;" onclick="cambioPanel(7)">Configuración de Cuenta</button><br>
                            <p><span class="badge badge-danger badge-pill" style="margin-right: 1%;" >-</span> Cambio de contraseña, credenciales y nombre de usuario.</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col" style="background-color: orange; border-radius: 5px; ">
                <img src="images/logo.png" style="display: block; margin-left: auto; margin-right: auto;">
            </div>
        </div>
    </div>    
</div>
