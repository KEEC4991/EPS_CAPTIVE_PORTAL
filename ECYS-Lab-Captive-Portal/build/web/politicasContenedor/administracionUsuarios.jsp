<%-- 
    Document   : administracionUsuarios
    Created on : 29/09/2019, 03:32:51 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet" type="text/css" href="themes/black/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/datagrid-filter.js"></script>
<script type="text/javascript" src="politicasContenedor/administracionUsuarios.js"></script>

<script type="text/javascript">

    var data_administradores = $('#dg_usuarios_admin_administrivos').datagrid({
        singleSelect: true,
        collapsible: true,
        method: 'get',
        toolbar: '#ft_ad1',
        pagination: true,
        clientPaging: true,
        remoteFilter: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        nowrap: false,
        url: 'http://127.0.0.1:8080/ECYS-CP/get-user?accion=0'
    });

    data_administradores.datagrid('enableFilter');

</script>

<div style="width: 100%; height: 100%;" class="container-fluid" align="center">
    <div class="easyui-panel" style="width: 100%; height: 100%;" title="Administracion de Usuarios" >
        <div class="container" style="height: 100%;">
            <table id='dg_usuarios_admin_administrivos' title="Listado de Usuarios Administrativos" style="width:100%; height: 98%;">
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
            <div id="ft_ad1" style="padding:2px 5px;">
                <a href="#" class="easyui-linkbutton" iconCls="icon-estado-usuario" plain="true" onclick="administracionUsuarios_Cambiar_Estado()">Cambiar Estado</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-tipo-usuario" plain="true" onclick="administracionUsuarios_Cambiar_Tipo_Usuario()">Cambiar Tipo Usuario</a>
            </div>
        </div>
    </div>
</div>
<div class="easyui-window" id='window_cambio_estado_administracion_usuarios' title='Cambio de estado' 
     data-options="modal:true,closed:true,iconCls:'icon-add',onClose: function(){ $('#form_cambio_estado').form('reset'); }" style="width: 25%; height: 25%;" align='center'>
    <form id='form_cambio_estado'>
        <br>
        <h6>Seleccione el nuevo estado</h6>
        <hr>
        <input class="easyui-combobox" labelWidth='140' label='Nuevo Estado' 
               id='cmb_tipo_ususario_cambio_estado'
               data-options="
               valueField:'id_estado',
               textField:'descripcion',
               method: 'get',
               editable: false,
               required: true,
               prompt:'Seleccione una opcion',
               url:'http://127.0.0.1:8080/ECYS-CP/get-user?accion=4'
               " 
               style="width:80%;">
        <hr>
        <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="confirmar_Cambio_Estado_Usuario_Administracion()">Aceptar</a>
    </form>
</div>

<div class="easyui-window" id='window_cambio_tipo_usuario_administracion_usuarios' title='Cambio de Tipo de Usuario' 
     data-options="modal:true,closed:true,iconCls:'icon-add',onClose: function(){ $('#form_cambio_estado').form('reset'); }" style="width: 25%; height: 25%;" align='center'>
    <form id='form_cambio_tipo_usuario'>
        <br>
        <h6>Seleccione el Nuevo Tipo de Usuario:</h6>
        <hr>
        <input class="easyui-combobox" labelWidth='140' label='Tipo Usuario' 
               id='cmb_tipo_usuario_cambio_tipo'
               data-options="
               valueField:'id_tipo',
               textField:'descripcion',
               method: 'get',
               editable: false,
               required: true,
               prompt:'Seleccione una opcion',
               url:'http://127.0.0.1:8080/ECYS-CP/get-user?accion=3'
               " 
               style="width:80%;">
        <hr>
        <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="confirmar_Cambio_Tipo_Usuario_Administracion()">Aceptar</a>
    </form>
</div>