<%-- 
    Document   : gestionUsuariosAdmin
    Created on : 26/09/2019, 03:59:38 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link type="text/css" href="css/GUI/gestionUsuariosAdmin.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="themes/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/datagrid-filter.js"></script>
<script src="gestionUsuariosAdmin.js" type="text/javascript"></script>
<style type="text/css">
    .datagrid-header-row .datagrid-cell{
        line-height:normal;
        height:auto;
        white-space:normal;
    }
</style>
<div class="container-fluid" style="height: 100%;">
    <div class="row">
        <div class="col" align="center">
            <h5 style="font-weight: bold;">Gestión de Usuarios</h5>
        </div>
    </div>
    <hr style="margin-top: -5px;">

    <div class="row"  style="height: 100%; width: 100%;">
        <div class="col" style="height: 100%;width: 100%;">
            <div id="aa" class="easyui-accordion" style="width:100%; height: 100%;">

                <div title="Usuarios Administrativos" data-options="iconCls:'icon-lan-2'" style="padding:10px;   width: 100%; height: 100%;" align='center'>

                    <div class="container-fluid" style="height: 100%; width: 100%;" align='center'>
                        <div class="row" style="height: 100%; width: 100%;" align='center'>
                            <div class="col panel_reporte" style="height: 100%; width: 100%;" align='center'>
                                <table id="dg_usuarios_administrativos"  style="width:100%; height: 100%;">
                                    <thead>
                                        <tr>
                                            <th data-options="field:'ck',checkbox:true" ></th>
                                            <th data-options="field:'id_usuario'" align="center" width="8%">ID Usuario</th>
                                            <th data-options="field:'nombre_usuario'" align="left" width="15%">Nombre</th>
                                            <th data-options="field:'correo_electronico'" align="center" width="15%">Correo Electronico</th>
                                            <th data-options="field:'tipo_usuario'" align="center" width="10%">Tipo Usuario</th>
                                            <th data-options="field:'estado_usuario'" align="center" width="10%">Estado</th>
                                            <th data-options="field:'fecha_ultima_conexion'" align="center" width="10%">Fecha Ultima Conexión</th>
                                            <th data-options="field:'fecha_registro'" align="center" width="10%">Fecha Registro</th>
                                            <th data-options="field:'usuario_descripcion'" align="left" width="20%">Descripción Usuario</th>
                                        </tr>
                                    </thead>
                                </table>

                                <div id="ft1" style="padding:2px 5px;">
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="agregarUsuarioAdmin()">Nuevo</a>
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-no" plain="true" onclick="eliminarUsusario()">Eliminar</a>
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">Editar</a>
                                </div>

                            </div>
                        </div>
                    </div>                  
                </div>

                <div title="Usuarios de la Red" data-options="iconCls:'icon-user'" style="padding:10px;  width: 100%; height: 100%;">
                    <div class="container-fluid" style="height: 100%; width: 100%;" align='center'>
                        <div class="row" style="height: 100%; width: 100%;"  align='center'>
                            <div class="col panel_reporte" style="height: 100%; width: 100%;"  align='center'>
                                <table style="width:100%; height: 100%;"
                                       id="dg_usuarios_red_gestion"
                                       data-options="
                                       fitColumns:true,
                                       pagination:true,
                                       onDropColumn: function(){
                                            $(this).datagrid('clientPaging')
                                            $(this).datagrid('reaload');
                                       },
                                       pageSize:10"
                                       >
                                    <thead>
                                        <tr>
                                            <th data-options="field:'ck',checkbox:true"></th>
                                            <th data-options="field:'id_usuario',width:50" align="center" >ID Usuario</th>
                                            <th data-options="field:'id_usuario_freeradius',width:50" align="center" >Id RADIUS</th>
                                            <th data-options="field:'carnet',width:110" align="center" >Carnet</th>
                                            <th data-options="field:'nombre',width:110" align="center" >Nombre</th>
                                            <th data-options="field:'apellido',width:110" align="center" >Apellido</th>
                                            <th data-options="field:'fecha_nac',width:110" align="center" >Fecha Nac</th>
                                            <th data-options="field:'id_carrera',hidden:true,width:110" align="center" >Fin Conexión</th>
                                            <th data-options="field:'correo',width:250" align="center" >Correo</th>
                                            <th data-options="field:'nombre_carrera',width:100" align="center" >Nombre Carrera</th>
                                        </tr>
                                    </thead>
                                </table>
                                <div id="ft2" style="padding:2px 5px;">
                                    <!--a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a-->
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="eliminarUsuarioRed()"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br>

<div id='window_gestion_usuarios_nuevo' title='Nuevo Usuario Administrador' class="easyui-window" data-options="modal:true,closed:true,iconCls:'icon-add'" style="width: 40%; height: 45%;">
    <form id='form_gestion_usuarios_nuevo' style="width: 100%; height: content-box; padding: 10px; color: white; ">
        <hr>
        <div class="easyui-form" style="width: 100%;height: content-box;" title='Informacion General'>
            <input id='txt_gestion_usuario_nombre' class="easyui-textbox" data-options="iconCls:'icon-search',required:true" labelWidth='140' label='Nombre de Usuario' style="width:100%;">
            <input id='txt_gestion_usuario_correo' class="easyui-textbox" data-options="iconCls:'icon-search',required:true,validType:'email',label:'Correo Electronico'" labelWidth='140' style="width:100%;">
            <input id='txt_gestion_usuario_descripcion' class="easyui-textbox" data-options="iconCls:'icon-search',required:true,prompt:'Ingrese una breve descripción',multiline:true" labelWidth='140' label='Descripción Usuario' style="width:100%;">
            <input id='txt_gestion_usuario_contraseña' class="easyui-passwordbox" data-options="iconCls:'icon-search',required:true,prompt:'Contraseña'" labelWidth='140' label='Contraseña' style="width:100%;">
            <input id='txt_gestion_usuario_contraseña_confirm' class="easyui-passwordbox" data-options="iconCls:'icon-search',required:true,prompt:'Repita la contraseña'" labelWidth='140' label='Confirmación Contraseña' style="width:100%;">
        </div>
        <hr>
        <div style="width: 100%;height: content-box;" class="easyui-form container" title="Clasificacion de Usuario">
            <input class="easyui-combobox" labelWidth='140' label='Tipo Usuario' 
                   id='txt_gestion_usuario_tipo_usuario'
                   data-options="
                   valueField:'id_tipo',
                   textField:'descripcion',
                   method: 'get',
                   editable: false,
                   required: true,
                   prompt:'Seleccione una opcion',
                   url:'http://172.10.1.100:8080/ECYS-CP/get-user?accion=3'
                   " 
                   style="width:100%;">
            <input class="easyui-combobox" labelWidth='140' label='Estado' 
                   id='txt_gestion_usuario_estado'
                   data-options="
                   valueField:'id_estado',
                   textField:'descripcion',
                   method: 'get',
                   editable: false,
                   required: true,
                   prompt:'Seleccione una opcion',
                   url:'http://172.10.1.100:8080/ECYS-CP/get-user?accion=4'
                   " 
                   style="width:100%;">
        </div>
        <hr>
        <div style="width: 100%;height: content-box;" class="easyui-form" title="Clasificacion de Usuario" align='center'>
            <a href="#" class="easyui-linkbutton c1" style="font-size: 15px; width: 30%;" data-options="iconCls:'icon-save',iconAlign:'bottom'" onclick="guardarNuevoUsuario()"><span style='font-size:18px'>Guardar</span></a>
        </div>
    </form>
</div>


