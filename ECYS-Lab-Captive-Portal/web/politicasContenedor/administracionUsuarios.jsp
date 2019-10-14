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

<div style="width: 100%; height: 100%;" class="container-fluid" align="center">
    <div class="easyui-panel" style="width: 100%; height: 100%;" title="Administracion de Usuarios" >
        <div class="container" style="height: 100%;">
            <table class="easyui-datagrid" title="Listado de Usuarios Administrativos" style="width:100%; height: 98%;"
                   data-options="singleSelect:false,collapsible:true,url:'datagrid_data1.json',method:'get'," toolbar="#ft1">
                <thead>
                    <tr>
                        <th data-options="field:'ck',checkbox:true" ></th>
                        <th data-options="field:'itemid'" align="center" width="10%">Item ID</th>
                        <th data-options="field:'productid'" align="center" width="10%">Product</th>
                        <th data-options="field:'listprice'" align="center" width="10%">List Price</th>
                        <th data-options="field:'unitcost'" align="center" width="10%">Unit Cost</th>
                        <th data-options="field:'attr1'" align="left" width="50%">Attribute</th>
                        <th data-options="field:'status'" align="center" width="8%">Status</th>
                    </tr>
                </thead>
            </table>

            <div id="ft1" style="padding:2px 5px;">
                <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">Agregar</a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
                <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
            </div>
        </div>
    </div>
</div>
