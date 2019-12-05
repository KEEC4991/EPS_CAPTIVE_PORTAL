
$(function () {

    var datagrid_usuarios_conexion_reportes = $('#dg_reportes_listado_usuarios_conexion').datagrid({
        singleSelect: false,
        collapsible: true,
        url: 'http://127.0.0.1:8080/ECYS-CP/admin-rep?accion=0',
        pagination: true,
        clientPaging: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        nowrap: false,
        method: 'post',
        title: 'Listado de Usuarios por Conexión',
        toolbar: '#ft_reporte2',
        rowStyler: function (index, row) {
            //console.log(row);
            if (row.no_tipo_respuesta === "Access-Accept") {
                return 'background-color:rgb(46, 134, 193);color:white;font-weight:bold;';
            } else {
                return 'background-color:rgb(203, 67, 53);color:white;font-weight:bold;';
            }
        }
    });
    datagrid_usuarios_conexion_reportes.datagrid('enableFilter');

    $.post('http://127.0.0.1:8080/ECYS-CP/admin-rep', {accion: 1}, function (respuesta) {
        datagrid_usuarios_conexion_reportes.datagrid('loadData', respuesta);
    }, 'json');

});

