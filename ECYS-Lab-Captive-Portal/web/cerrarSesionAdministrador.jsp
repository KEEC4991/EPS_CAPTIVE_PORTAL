<%-- 
    Document   : cerrarSesionAdministrador
    Created on : 12/11/2019, 06:33:14 PM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <div class="row">
        <div class="col" align="center">
            <h5> Cerrar Sesion </h5>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="Cerrar Sesión" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <form>

                    <div class="form-group" align="center">
                        <h6>Salir de la sessión?</h6>
                    </div>
                    <div class="form-group" align="center">
                        <button class="btn btn-danger btm-md" onclick="cerrar_sesion()"> SI </button>
                        <button class="btn btn-danger btm-md"> NO </button>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>


<script src="cerrarSesionAdministrador.js" type="text/javascript"></script>
