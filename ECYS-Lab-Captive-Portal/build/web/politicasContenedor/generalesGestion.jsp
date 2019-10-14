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

<div style="width: 100%; height: 100%;" class="container-fluid" align="center">
    <div class="easyui-panel" style="width: 100%; height: 100%;" title="Gestión de Direcciones">
        <div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools2'" title="Titulo de Generales" style="width:100%;height:100%;">
        </div>
        <div id="tab-tools2">
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="addPanel()"></a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" onclick="removePanel()"></a>
        </div>
    </div>
</div>

<div style="width: 100%;">

</div>