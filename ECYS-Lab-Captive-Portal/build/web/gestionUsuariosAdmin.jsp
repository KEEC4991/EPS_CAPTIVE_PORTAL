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

<div class="container-fluid" style="height: 100%;">
    <div class="row">
        <div class="col" align="center">
            <h5 style="font-weight: bold;">Gestión de Usuarios</h5>
        </div>
    </div>
    <hr style="margin-top: -5px;">

    <div class="row"  style="height: 100%;">
        <div class="col" style="height: 100%;">
            
            <div id="aa" class="easyui-accordion" style="width:100%; height: 100%;">
                <div title="Usuarios Administrativos" data-options="iconCls:'icon-lan-2'" style="overflow:auto;padding:10px; width: 100%; height: 100%;">
                    <div class="container-fluid" style="height: 100%;">
                        <div class="row" style="height: 100%;">
                            <div class="col panel_general" style="height: 100%;">
                                <div class="panel_reporte" style="height: 100%;">

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
                                        <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"></a>
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
                <div title="Usuarios de la Red" data-options="iconCls:'icon-user'" style="padding:10px;  width: 100%; height: 100%;">
                    <div class="container-fluid" style="height: 100%;">
                        <div class="row" style="height: 100%;">
                            <div class="col panel_general" style="height: 100%;">
                                <div class="panel_reporte" style="height: 100%;">
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
                                        <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"></a>
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
</div>
<br>

<script src="gestionUsuariosAdministrador.js" type="text/javascript"></script>


