
$(function () {

    var dgconsumos = $('#dg_consumo').datagrid({
        singleSelect: false,
        collapsible: true,
        pagination: true,
        clientPaging: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        nowrap: false,
        fitColumns: true,
        method: 'post',
        title: 'Detalle de Consumo por Usuario y Conexion',
        url: 'http://172.10.1.100:8080/ECYS-CP/admin-rep?accion=8'
    });

    dgconsumos.datagrid('enableFilter');

    $.ajax({
        url: 'http://172.10.1.100:8080/ECYS-CP/admin-rep',
        data: {accion: 8},
        success: function (data, textStatus, jqXHR) {
            var JSONresp = JSON.parse(data);
            dgconsumos.datagrid('loadData', JSONresp);
        }
    });

/*
    $.post('http://localhost:8080/ECYS-CP/admin-rep', {accion: 8}, function (respuesta) {
        console.log(respuesta);
        datagrid_detalle_consumo_reporte.datagrid('loadData', respuesta);
    }, 'json');
*/
    /**
     * OTRO GRID
     */

    var datagrid_usuarios_conexion_reportes = $('#dg_reportes_listado_usuarios_conexion').datagrid({
        singleSelect: false,
        collapsible: true,
        url: 'http://172.10.1.100:8080/ECYS-CP/admin-rep?accion=0',
        pagination: true,
        clientPaging: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        nowrap: false,
        fitColumns: true,
        method: 'post',
        title: 'Listado de Usuarios por Conexión',
        // toolbar: '#ft_reporte2',
        rowStyler: function (index, row) {
            //console.log(row);
            if (row.no_tipo_respuesta === "Access-Accept") {
                return 'background-color:rgb(46, 134, 193);color:white;font-weight:bold;';
            } else {
                return 'background-color:rgb(203, 67, 53);color:white;font-weight:bold;';
            }
        }
    });
    datagrid_usuarios_conexion_reportes.datagrid('loadData', []);
    datagrid_usuarios_conexion_reportes.datagrid('enableFilter');

    $.post('http://172.10.1.100:8080/ECYS-CP/admin-rep', {accion: 1}, function (respuesta) {
        datagrid_usuarios_conexion_reportes.datagrid('loadData', respuesta);
    }, 'json');


});

Date.prototype.addDays = function (days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
}

Date.prototype.yyyymmdd = function () {
    var mm = this.getMonth() + 1; // getMonth() is zero-based
    var dd = this.getDate();
    return this.getFullYear() + "-" + ((mm > 9 ? '' : '0') + mm) + "-" + ((dd > 9 ? '' : '0') + dd);
};

function loadReporteConsumidores() {

    var fecha1 = $('#datepicker1').datebox('getValue');
    var fecha2 = $('#datepicker2').datebox('getValue');

    if (fecha1 === "" || fecha2 === "") {
        $.messager.alert('Error', 'Error, aún no un rango de fechas para el reporte.', 'warning');
        return;
    }


    fecha1 = fecha1.split('/');
    fecha2 = fecha2.split('/');
    var date1 = new Date(fecha1[2], fecha1[1] - 1, fecha1[0]);
    var date2 = new Date(fecha2[2], fecha2[1] - 1, fecha2[0]);

    var dateDiferencia = date2.getTime() - date1.getTime();
    var diferenciaEnDias = Math.ceil(dateDiferencia / (1000 * 60 * 60 * 24));

    if (diferenciaEnDias < 0) {
        $.messager.alert('Error', 'Error, la fecha inicial es mayor que la fecha final de reporte.', 'warning');
        return;
    }

    if (diferenciaEnDias > 31) {
        $.messager.alert('Error', 'Error, no se puede seleccionar rangos de fechas mayores a un mes', 'warning');
        return;
    }

    var titulos_fechas = [];

    var consulta = "";
    for (var x = 0; x <= diferenciaEnDias; x++) {
        var nuevoFecha = date1.addDays(x);
        var fecha_formato = nuevoFecha.yyyymmdd();
        var fecha = "count (*) filter (where fecha >= '" + fecha_formato + "' and fecha <= '" + fecha_formato + "') as rango_" + x + "";
        if (x != diferenciaEnDias) {
            fecha += ",";
        }
        titulos_fechas.push(fecha_formato);
        consulta += fecha + "\n";
    }

    $.ajax({
        url: 'http://172.10.1.100:8080/ECYS-CP/admin-rep',
        type: 'get',
        data: {accion: 4, consulta: consulta, rango: diferenciaEnDias},
        success: function (data, textStatus, jqXHR) {
            try {
                var objetoJSON = JSON.parse(data);

                var ctxL = document.getElementById("lineChart").getContext('2d');
                var myLineChart = new Chart(ctxL, {
                    type: 'line',
                    data: {
                        labels: titulos_fechas,
                        datasets: [{
                                label: "ECYS-014",
                                data: objetoJSON,
                                backgroundColor: [
                                    'rgba(255, 87, 51, .5)',
                                ],
                                borderColor: [
                                    'rgba(97, 19, 3, .8)',
                                ],
                                borderWidth: 2
                            }/*,
                             {
                             label: "My Second dataset",
                             data: [28, 48, 40, 19, 86, 27, 90],
                             backgroundColor: [
                             'rgba(0, 137, 132, .2)',
                             ],
                             borderColor: [
                             'rgba(0, 10, 130, .7)',
                             ],
                             borderWidth: 2
                             }*/
                        ]
                    },
                    options: {
                        responsive: true
                    }
                });

            } catch (e) {
                $.messager.alert('Error de reporte', 'No se puede generar el reporte por problemas en la conexión al servidor');
            }
        }
    })


}

var indice_global = -1;

function openVentanaDetalle() {


    var fecha1 = $('#datepicker1').datebox('getValue');
    var fecha2 = $('#datepicker2').datebox('getValue');

    var fecha1_prov = fecha1;
    var fecha2_prov = fecha2;

    if (fecha1 === "" || fecha2 === "") {
        $.messager.alert('Error', 'Error, aún no un rango de fechas para el reporte.', 'warning');
        return;
    }

    fecha1 = fecha1.split('/');
    fecha2 = fecha2.split('/');
    var date1 = new Date(fecha1[2], fecha1[1] - 1, fecha1[0]);
    var date2 = new Date(fecha2[2], fecha2[1] - 1, fecha2[0]);

    var dateDiferencia = date2.getTime() - date1.getTime();
    var diferenciaEnDias = Math.ceil(dateDiferencia / (1000 * 60 * 60 * 24));

    if (diferenciaEnDias < 0) {
        $.messager.alert('Error', 'Error, la fecha inicial es mayor que la fecha final de reporte.', 'warning');
        return;
    }

    var grid_detalle = $('#dg_detalle_consumidores').datagrid({
        singleSelect: true,
        collapsible: true,
        url: 'http://172.10.1.100:8080/ECYS-CP/admin-rep?accion=5&inicio=' + fecha1_prov + '&final=' + fecha2_prov,
        pagination: true,
        clientPaging: true,
        rownumbers: true,
        checkOnSelect: true,
        selectOnCheck: true,
        view: detailview,
        autoUpdateDetail: true,
        detailFormatter: function (index, row) {
            /*
             var retorno = "<div style=\"padding:2px; position:relative; \">" +
             "<table id='cosa" + index + "' class='easyui-datagrid' style='width:1vh;height:1vh;'>" +
             "<thead>" +
             "<tr>" +
             "<th data_options=\"field: 'id', title: 'Id', width: 30, align: 'center'\">" +
             "<th data_options=\"field: 'id', title: 'Id', width: 30, align: 'center'\">" +
             "</tr>" +
             "</thead>" +
             "</table> " +
             "</div>";
             return retorno;
             */
            //var id_datagrid = "clase" + index; return '<div style="padding:2px;position:relative;">\n\ <table class="' + id_datagrid + '" id="' + id_datagrid + '"></table>\n\</div>';
            return '<div style="padding:2px;position:relative;"><table class="ddv"></table></div>';
        },
        onExpandRow: function (index, row) {

            var ddv = $(this).datagrid('getRowDetail', index).find('table.ddv');

            ddv.datagrid({
                url: 'http://172.10.1.100:8080/ECYS-CP/admin-rep?accion=6&fecha=' + row.fecha,
                fitColumns: true,
                singleSelect: true,
                method: 'get',
                rownumbers: true,
                loadMsg: '',
                height: 'content',
                rowStyler: function (index, row) {
                    if (row.causa === "Conectado") {
                        return 'background-color:rgb(46, 134, 193,0.3);color:white;font-weight:bold;';
                    } else {
                        return 'background-color:rgb(203, 67, 53,0.3);color:white;font-weight:bold;';
                    }
                },
                columns: [[
                        {field: 'id', title: 'Id', width: 30, align: 'center'},
                        {field: 'usuario', title: 'Usuario', width: 70, align: 'center'},
                        {field: 'origen', title: 'Origen', width: 100, align: 'center'},
                        {field: 'tipo', title: 'Tipo Conexion', width: 100, align: 'center'},
                        {field: 'fecha_inicio', title: 'Fecha Inicio Conexión', width: 150, align: 'center'},
                        {field: 'fecha_final', title: 'Fecha Fin Conexión', width: 150, align: 'center'},
                        {field: 'dispositivo', title: 'MAC Dispositivo', width: 150, align: 'center'},
                        {field: 'causa', title: 'Causa Final', width: 80, align: 'center'}
                    ]],
                onResize: function () {
                    $('#dg').datagrid('fixDetailRowHeight', index);
                },
                onLoadSuccess: function () {
                    setTimeout(function () {
                        $('#dg').datagrid('fixDetailRowHeight', index);
                    }, 100);
                }
            });

            grid_detalle.datagrid('fixDetailRowHeight', index);

            if (index !== -1 && index !== indice_global) {
                grid_detalle.datagrid('collapseRow', indice_global);
            }

            indice_global = index;

        },
        nowrap: false,
        method: 'get',
        title: 'Cantidad de Consumidores de Servicio de Internet'
    });

    grid_detalle.datagrid('enableFilter');

    $('#ventana_detalle_reporte').window('open');
}


function myformatter(date) {
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    var d = date.getDate();
    return (d < 10 ? ('0' + d) : d) + '/' + (m < 10 ? ('0' + m) : m) + '/' + y;
}
function myparser(s) {
    if (!s)
        return new Date();
    var ss = (s.split('/'));
    var d = parseInt(ss[0], 10);
    var m = parseInt(ss[1], 10);
    var y = parseInt(ss[2], 10);
    if (!isNaN(y) && !isNaN(m) && !isNaN(d)) {
        return new Date(y, m - 1, d);
    } else {
        return new Date();
    }
}
