<%-- 
    Document   : direccionesGestion
    Created on : 29/09/2019, 03:33:09 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet" type="text/css" href="themes/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/datagrid-filter.js"></script>

<script type="text/javascript" src="politicasContenedor/generalesGestion.js"></script>

<script>
    var data_administradores = $('#dg_politicas_administracion').datagrid({
        singleSelect: true,
        collapsible: true,
        method: 'get',
        pagination: true,
        fitColumns:true,
        clientPaging: true,
        remoteFilter: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        nowrap: false,
        url: 'http://172.10.1.100:8080/ECYS-CP/pol-cap?accion=3',
        toolbar: '#toolbar-tabla-politicas-admin'
    });

    // url: 'http://172.10.1.100:8080/ECYS-CP/pol-cap?accion=1'

    data_administradores.datagrid('enableFilter');


</script>

<div style="width: 100%; height: 100%;" class="container-fluid" align="center">
    <div class="easyui-panel" style="width: 100%; height: 100%;" title="Gestión de Direcciones">

        <table style="width: 100%;" id="dg_politicas_administracion">
            <thead>
                <tr>
                    <th data-options="field:'ck',checkbox:true" ></th>
                    <th data-options="field:'id_politica'," align="center" width="10">ID Politica</th>
                    <th data-options="field:'nombre_politica'" align="left" width="20">Nombre Politica</th>
                    <th data-options="field:'valor_descriptivo'" align="center" width="15">Valor</th>
                    <th data-options="field:'descripcion'" align="center" width="20">Descripcion</th>
                    <th data-options="field:'id_estado'" align="center" width="10">Tipo</th>
                    <th data-options="field:'id_administrador'" align="center" width="10">ID Administrador</th>
                    <th data-options="field:'fecha_registro'" align="center" width="10">Fecha Registro</th>
                </tr>
            </thead>
        </table>
        <script>

        </script>

        <div id="toolbar-tabla-politicas-admin">
            <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="windowNuevaPolitica()">Añadir</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">Eliminar</a>
            <!--input class="easyui-combobox"
                   style="text-align: center; width: 20%;"
                   data-options="
                   editable:false,
                   valueField:'idpolitica',
                   textField:'descripcion',
                   url:'http://localhost:8080/ECYS-CP/pol-cap?accion=1',
                   method:'get'"  /-->
        </div>
    </div>
</div>

<div class="easyui-window" id='window_new_politica' title='Nueva Politica' 
     data-options="modal:true,closed:true,iconCls:'icon-add',onClose: function(){ $('#form_new_policy').form('reset'); }" style="width: 25%; height: content-box;" align='left'>
    <form id='form_new_policy' class="container" align="left" style="color: white !important;">
        <style>
            .form-check, label {
                color: #006666 !Important;
            }
        </style>
        <br>
        <input class="easyui-combobox" labelWidth='140' label='Tipo Politica' 
               labelPosition="top"
               data-options="
               valueField:'idpolitica',
               textField:'descripcion',
               method: 'get',
               editable: false,
               required: true,
               prompt:'Seleccione una opcion',
               url:'http://172.10.1.100:8080/ECYS-CP/pol-cap?accion=1'
               " 
               style="width:100%;"
               id="policy_tipo_combobox"
               >
        <hr>
        <input id="policy_nombre_textbox" class="easyui-textbox" prompt="Texto" data-options="required:true" labelPosition="top" label="Nombre Politica:" style="width: 100%; color: white;">
        <input id="policy_valor_textbox" class="easyui-textbox" data-options="required:true" prompt="Numerico / texto" labelPosition="top" label="Valor de Asignacion/Descriptivo:" style="width: 100%;">
        <input id="policy_descripcion_textbox" class="easyui-textbox" data-options="required:true" prompt="Texto descriptivo.." labelPosition="top" label="Descripcion:" data-options="multiline:true" style="width: 100%;">
        <hr>
        <div style="width: 100%;" align="center">
            <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="savePolicy()" style="width: 50%;">Guardar</a>
        </div>
    </form>
</div>