$(function () {
    var datagrid_usuarios_conexion_reportes = $('#dg_reportes_listado_usuarios_conexion').datagrid({
        singleSelect: false,
        collapsible: true,
        url: 'http://127.0.0.1:8080/ECYS-CP/get-user?accion=0',
        pagination: true,
        clientPaging: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        nowrap: false,
        method: 'get',
        title: 'Listado de Usuarios por Conexión',
        toolbar: '#ft_reporte2'
    });
    datagrid_usuarios_conexion_reportes.datagrid('enableFilter');
});

