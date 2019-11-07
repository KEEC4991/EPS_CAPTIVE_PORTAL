<%-- 
    Document   : direccionesGestion
    Created on : 29/09/2019, 03:33:09 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet" type="text/css" href="themes/black/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/datagrid-filter.js"></script>

<script>


    var data_administradores = $('#dg_politicas_administracion').datagrid({
        singleSelect: true,
        collapsible: true,
        method: 'get',
        pagination: true,
        clientPaging: true,
        remoteFilter: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        nowrap: false,
        toolbar: '#toolbar-tabla-politicas-admin'
    });

    // url: 'http://127.0.0.1:8080/ECYS-CP/get-user?accion=0'

    data_administradores.datagrid('enableFilter');


</script>

<div style="width: 100%; height: 100%;" class="container-fluid" align="center">
    <div class="easyui-panel" style="width: 100%; height: 100%;" title="Gestión de Direcciones">

        <table style="width: 100%;" id="dg_politicas_administracion">
            <thead>
                <tr>
                    <th data-options="field:'ck',checkbox:true" ></th>
                    <th data-options="field:'id_usuario'" align="center" width="8%">ID Usuario</th>
                    <th data-options="field:'nombre_usuario'" align="left" width="15%">Nombre Usuario</th>
                    <th data-options="field:'correo_electronico'" align="center" width="15%">Correo Electronico</th>
                    <th data-options="field:'tipo_usuario'" align="center" width="10%">Tipo Usuario</th>
                    <th data-options="field:'estado_usuario'" align="center" width="10%">Estado</th>
                    <th data-options="field:'fecha_ultima_conexion'" align="center" width="10%">Fecha Conexión</th>
                    <th data-options="field:'fecha_registro'" align="center" width="10%">Fecha Registro</th>
                    <th data-options="field:'usuario_descripcion'" align="left" width="20%">Descripción Usuario</th>
                </tr>
            </thead>
        </table>
        
        <div id="toolbar-tabla-politicas-admin">
            <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"></a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
            <input class="easyui-combobox" data-options="editable:false" />
        </div>
        
    </div>
</div>

<div style="width: 100%;">

</div>