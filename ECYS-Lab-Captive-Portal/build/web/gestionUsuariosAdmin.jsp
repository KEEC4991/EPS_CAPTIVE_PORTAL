<%-- 
    Document   : gestionUsuariosAdmin
    Created on : 26/09/2019, 03:59:38 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link type="text/css" href="css/GUI/gestionUsuariosAdmin.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="themes/black/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/datagrid-filter.js"></script>
<script src="gestionUsuariosAdmin.js" type="text/javascript"></script>

<script type="text/javascript">

    var data_administradores = $('#dg_usuarios_administrativos').datagrid({
        singleSelect: true,
        collapsible: true,
        method: 'get',
        toolbar: '#ft1',
        pagination: true,
        clientPaging: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        nowrap:false,
        url: 'http://127.0.0.1:8080/ECYS-CP/get-user?accion=0'
    });

//url: 'datagrid_data1.json',

    data_administradores.datagrid('enableFilter');


</script>

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

                                <table 
                                    id="dg_usuarios_administrativos" 
                                    title="Listado de Usuarios Administrativos" 
                                    style="width:100%; height: 95%;">
                                    <thead>
                                        <tr>
                                            <th data-options="field:'ck',checkbox:true" ></th>
                                            <th data-options="field:'id_usuario'" align="center" width="8%">ID Usuario</th>
                                            <th data-options="field:'nombre_usuario'" align="left" width="15%">Nombre Usuario</th>
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
                                <table class="easyui-datagrid" title="Basic DataGrid" style="width:100%; height: 100%;"
                                       data-options="singleSelect:false,collapsible:true,url:'datagrid_data1.json',method:'get'" toolbar="#ft2">
                                    <thead>
                                        <tr>
                                            <th data-options="field:'ck',checkbox:true"></th>
                                            <th data-options="field:'itemid'" align="center" width="10%">Item ID</th>
                                            <th data-options="field:'productid'" align="center" width="10%">Product</th>
                                            <th data-options="field:'listprice'" align="center" width="10%">List Price</th>
                                            <th data-options="field:'unitcost'" align="center" width="10%">Unit Cost</th>
                                            <th data-options="field:'attr1'" align="left" width="50%">Attribute</th>
                                            <th data-options="field:'status'" align="center" width="8%">Status</th>
                                        </tr>
                                    </thead>
                                </table>
                                <div id="ft2" style="padding:2px 5px;">
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="agregarUsuarioAdmin()"></a>
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
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

<div id='window_gestion_usuarios_nuevo' title='Nuevo Usuario Administrador' class="easyui-window" data-options="modal:true,closed:true,iconCls:'icon-add'" style="width: 40%; height: 40%;">
    <form id='form_gestion_usuarios_nuevo' style="width: 100%; height: 80%; padding: 10px; color: white; ">
        <hr>
        <div class="easyui-form" style="width: 100%;height: 40%;" title='Informacion General'>
            <input id='txt_gestion_usuario_nombre' class="easyui-textbox" data-options="iconCls:'icon-search',required:true" labelWidth='140' label='Nombre de Usuario' style="width:100%;">
            <input id='txt_gestion_usuario_correo' class="easyui-textbox" data-options="iconCls:'icon-search',required:true,validType:'email',label:'Correo Electronico'" labelWidth='140' style="width:100%;">
            <input id='txt_gestion_usuario_descripcion' class="easyui-textbox" data-options="iconCls:'icon-search',required:true,prompt:'Ingrese una breve descripción',multiline:true" labelWidth='140' label='Descripción Usuario' style="width:100%;">

        </div>
        <hr>
        <div style="width: 100%;height: 25%;" class="easyui-form container" title="Clasificacion de Usuario">
            <input class="easyui-combobox" labelWidth='140' label='Tipo Usuario' 
                   id='txt_gestion_usuario_tipo_usuario'
                   data-options="
                   valueField:'id_tipo',
                   textField:'descripcion',
                   method: 'get',
                   editable: false,
                   required: true,
                   prompt:'Seleccione una opcion',
                   url:'http://127.0.0.1:8080/ECYS-CP/get-user?accion=3'
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
                   url:'http://127.0.0.1:8080/ECYS-CP/get-user?accion=4'
                   " 
                   style="width:100%;">
        </div>
        <hr>
        <div style="width: 100%;height: 10%;" class="easyui-form" title="Clasificacion de Usuario" align='center'>
            <a href="#" class="easyui-linkbutton c1" style="font-size: 15px; width: 30%;" data-options="iconCls:'icon-save',iconAlign:'bottom'" onclick="guardarNuevoUsuario()"><span style='font-size:18px'>Guardar</span></a>
        </div>
    </form>
</div>



