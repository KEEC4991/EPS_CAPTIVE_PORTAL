<%-- 
    Document   : gestionUsuariosAdmin
    Created on : 26/09/2019, 03:59:38 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link type="text/css" rel="stylesheet" href="css/GUI/reportesAdministracion.css">
<link rel="stylesheet" type="text/css" href="themes/black/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/datagrid-filter.js"></script>
<script type="text/javascript" src="reportesAdministracion.js"></script>

<script>
    $(function () {
        $("#datepicker1").datepicker();
        $("#datepicker2").datepicker();
        $("#datepicker3").datepicker();
        $("#datepicker4").datepicker();
        $("#datepicker5").datepicker();
        var currentDate = new Date();
        $("#datepicker1").datepicker("setDate", currentDate);
        $("#datepicker2").datepicker("setDate", currentDate);
        $("#datepicker3").datepicker("setDate", currentDate);
        $("#datepicker4").datepicker("setDate", currentDate);
        $("#datepicker5").datepicker("setDate", currentDate);
    });</script>


<style>
    #reportesAdministracion_form .l-btn{
        background: #009900 !important;
        //background-image: linear-gradient(rgb(255, 152, 0) 0px, rgb(255, 152, 0) 100%) !important;
        background-image: #009900 !important;

    }
</style>


<div class="container-fluid" id="reportesAdministracion_form" style="height: 100%;">
    <div class="row">
        <div class="col" align="center">
            <h5> <b style="font-weight: bold;">Panel de Reportes </b></h5>
        </div>
    </div>
    <hr style="margin-top: -5px;">

    <div class="row" style="height: 100%;">
        <div class="col" style="height: 100%;">
            <div class="easyui-accordion" id="acordeon_reportes" style="width: 100%; height: 100%;">

                <div title="Cantidad de Consumidores de Servicio de Internet" data-options="iconCls:'icon-reporte-1'" style="overflow:auto;padding:10px; width: 100%; height: 100%;">

                    <div class="container-fluid" style="height: 100%;">
                        <div class="row" style="height: 100%;">
                            <div class="col panel_general" style="height: 100%;">
                                <div class="panel_reporte" style="height: 100%;" align='center'>

                                    <input class="easyui-datebox" style="color: black; text-align: center;" id="datepicker1" data-options="required:true,showSeconds:false,editable:false" >
                                    <input class="easyui-datebox" style="color: black; text-align: center;" id="datepicker2" data-options="required:true,showSeconds:false,editable:false" >


                                    <a href="#" class="easyui-linkbutton c1" style="width:120px">Detalle</a>
                                    <a href="#" class="easyui-linkbutton c1" style="width:120px">Actualizar</a>

                                    <hr>

                                    <!--div style="height: 85%;"-->
                                    <canvas id="lineChart" style="height: 0.4vh; width: 1vh;"></canvas>
                                    <!--/div-->

                                    <script>
                                        //line
                                        var ctxL = document.getElementById("lineChart").getContext('2d');
                                        var myLineChart = new Chart(ctxL, {
                                            type: 'line',
                                            data: {
                                                labels: ["January", "February", "March", "April", "May", "June", "July"],
                                                datasets: [{
                                                        label: "My First dataset",
                                                        data: [65, 59, 80, 81, 56, 55, 40],
                                                        backgroundColor: [
                                                            'rgba(105, 0, 132, .2)',
                                                        ],
                                                        borderColor: [
                                                            'rgba(200, 99, 132, .7)',
                                                        ],
                                                        borderWidth: 2
                                                    },
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
                                                    }
                                                ]
                                            },
                                            options: {
                                                responsive: true
                                            }
                                        });</script>


                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div title="Carácteristicas de la Población" data-options="iconCls:'icon-reporte-2'" style="overflow:auto;padding:10px; width: 100%; height: 100%;">

                    <div class="container-fluid" style="height: content-box;">
                        <div class="row" style="height: content-box;">
                            <div class="col panel_general" style="height: content-box;">
                                <div class="container-fluid panel_reporte" style="height: content-box; color: black;">
                                    <div class="row" style="height: content-box;" align='center'>
                                        <div class="col" style="height: content-box;" align='center'>
                                            <h4 style="font-weight: bold; font-size: 15px;">ESTUDIANTES POR CARRERA</h4>
                                            <hr>

                                            <!--canvas id="lineChart" style="height: 0.4vh; width: 1vh;"></canvas-->
                                            <canvas id="myChart" style="height: 0.4vh; width: 1vh; "></canvas>

                                            <script>

                                                $.ajax({
                                                    url: 'http://172.10.1.100:8080/ECYS-CP/rep-cap?accion=1',
                                                    type: 'GET',
                                                    success: function (data, textStatus, jqXHR) {

                                                        try {

                                                            var careerObject = JSON.parse(data);
                                                            var ctx = document.getElementById("myChart").getContext('2d');
                                                            var myChart = new Chart(ctx, {
                                                                type: 'bar',
                                                                data: {
                                                                    labels: careerObject.carreras, /* ["Civil", "Quimica", "Industrial", "Electrica", "Mecánica", "Mecánica Electrica"],*/
                                                                    datasets: [{
                                                                            label: 'Número de Estudiantes',
                                                                            data: careerObject.cantidades, // [12, 19, 3, 5, 2, 3],
                                                                            backgroundColor: [
                                                                                'rgba(255, 99, 132, 0.6)',
                                                                                'rgba(54, 162, 235, 0.6)',
                                                                                'rgba(255, 206, 86, 0.6)',
                                                                                'rgba(75, 192, 192, 0.6)',
                                                                                'rgba(153, 102, 255, 0.6)',
                                                                                'rgba(255, 159, 64, 0.6)',
                                                                                'rgba(255, 159, 64, 0.6)',
                                                                                'rgba(255, 159, 64, 0.6)',
                                                                                'rgba(255, 159, 64, 0.6)',
                                                                                'rgba(255, 159, 64, 0.6)'
                                                                            ],
                                                                            borderColor: [
                                                                                'rgba(255,99,132,1)',
                                                                                'rgba(54, 162, 235, 1)',
                                                                                'rgba(255, 206, 86, 1)',
                                                                                'rgba(75, 192, 192, 1)',
                                                                                'rgba(153, 102, 255, 1)',
                                                                                'rgba(255, 159, 64, 1)',
                                                                                'rgba(255, 159, 64, 1)',
                                                                                'rgba(255, 159, 64, 1)',
                                                                                'rgba(255, 159, 64, 1)',
                                                                                'rgba(255, 159, 64, 1)'
                                                                            ],
                                                                            borderWidth: 1
                                                                        }]
                                                                },
                                                                options: {
                                                                    scales: {
                                                                        yAxes: [{
                                                                                ticks: {
                                                                                    beginAtZero: true
                                                                                }
                                                                            }]
                                                                    }
                                                                }
                                                            });
                                                        } catch (e) {
                                                            console.log(e);
                                                        }
                                                    }
                                                });</script>

                                        </div>
                                    </div>
                                    <div class="row" style="height: content-box;" align='center'>
                                        <div class="col" style="height: content-box;" align='center'>
                                            <hr>
                                            <p style="font-weight: bold; text-align: left; ">Otras Caracteristicas de la Población</p>
                                            <hr>
                                            <canvas id="radarChart1" style="max-width: 45%; display: inline-block; "></canvas>
                                            <canvas id="radarChart2" style="max-width: 45%; display: inline-block; "></canvas>

                                            <script>
                                                //radar
                                                var ctxR1 = document.getElementById("radarChart1").getContext('2d');
                                                var ctxR2 = document.getElementById("radarChart2").getContext('2d');
                                                $.ajax({
                                                    url: 'http://172.10.1.100:8080/ECYS-CP/rep-cap?accion=3',
                                                    type: 'GET',
                                                    success: function (data, textStatus, jqXHR) {
                                                        try {

                                                            var objetoJSON = JSON.parse(data);

                                                            var longitud = objetoJSON.periodos.length;
                                                            var colores = [];
                                                            var bordes = [];

                                                            for (var i = 0; i < longitud; i++) {
                                                                colores.push('rgba(' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', .4)');
                                                                bordes.push('rgba(' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', .8)');
                                                            }


                                                            console.log(objetoJSON);
                                                            var myRadarChart = new Chart(ctxR1, {
                                                                type: 'pie',
                                                                data: {
                                                                    labels: objetoJSON.periodos, //["2010", "2011", "2012", "2013", "2014", "2015", "2016"],
                                                                    datasets: [{
                                                                            label: "Numero de Carnet",
                                                                            data: objetoJSON.cantidades, //[65, 59, 90, 81, 56, 55, 40],
                                                                            backgroundColor: colores/*[
                                                                             'rgba(' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', .2)',
                                                                             'rgba(' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', .2)',
                                                                             'rgba(' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', .2)',
                                                                             ]*/,
                                                                            borderColor: bordes /*[
                                                                             'rgba(' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', .7)',
                                                                             'rgba(' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', .2)',
                                                                             'rgba(' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', ' + (Math.floor(Math.random() * 255)) + ', .2)'
                                                                             ]*/,
                                                                            borderWidth: 2
                                                                        }
                                                                    ]
                                                                },
                                                                options: {
                                                                    responsive: true
                                                                }
                                                            });
                                                        } catch (e) {
                                                            console.log(e);
                                                        }
                                                    }
                                                });
                                                $.ajax({
                                                    url: 'http://172.10.1.100:8080/ECYS-CP/rep-cap?accion=2',
                                                    type: 'GET',
                                                    success: function (data, textStatus, jqXHR) {

                                                        try {
                                                            var objetoJSON = JSON.parse(data);
                                                            var myRadarChart = new Chart(ctxR2, {
                                                                type: 'radar',
                                                                data: {
                                                                    labels: ["<10", "10-14", "15-19", "20-24", "25-30", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", ">60"],
                                                                    datasets: [
                                                                        {
                                                                            label: "Edad de los Usuarios",
                                                                            data: objetoJSON,
                                                                            backgroundColor: [
                                                                                'rgba(0, 250, 220, .2)',
                                                                            ],
                                                                            borderColor: [
                                                                                'rgba(0, 213, 132, .7)',
                                                                            ],
                                                                            borderWidth: 2
                                                                        }
                                                                    ]
                                                                },
                                                                options: {
                                                                    responsive: true
                                                                }
                                                            });
                                                        } catch (e) {
                                                            console.log(e);
                                                        }
                                                    }
                                                });</script>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div title="Dispositivos Conectados" data-options="iconCls:'icon-reporte-3'" style="overflow:auto;padding:10px; width: 100%; height: 100%;" >

                    <div class="container-fluid" style="height: content-box;" align='center'>
                        <div class="row" style="height: content-box;" align='center'>
                            <div class="col panel_general" style="height: content-box;" align='center'>
                                <div class="panel_reporte" style="height: content-box; color: black;" align='center'>

                                    <h5 style="text-align: center;font-weight: bold;">DISPOSITIVOS CONECTADOS POR DÍA</h5>
                                    <hr>
                                    <div>
                                        <div align="center">
                                            <input class="easyui-datetimebox" style="color: black;" id="date_reporte_dispositivos_conectados_inicio" data-options="required:true,showSeconds:false,editable:false" >
                                            <input class="easyui-datetimebox" style="color: black;" id="date_reporte_dispositivos_conectados_fin" data-options="required:true,showSeconds:false,editable:false" >
                                        </div>
                                    </div>
                                    <hr>
                                    <div>
                                        <canvas id="dispositivos_conectados" style="max-width: 50%; display: inline-block; "></canvas>
                                        <script>
                                            var ctx = document.getElementById("dispositivos_conectados").getContext('2d');
                                            var myChart = new Chart(ctx, {
                                                type: 'bar',
                                                data: {
                                                    labels: ["3/10/2019", "4/10/2019", "5/10/2019", "6/10/2019", "7/10/2019", "8/10/2019"],
                                                    datasets: [{
                                                            label: 'Dispositivos Conectados por Día',
                                                            data: [12, 19, 3, 5, 2, 3],
                                                            backgroundColor: [
                                                                'rgba(255, 99, 132, 0.2)',
                                                                'rgba(54, 162, 235, 0.2)',
                                                                'rgba(255, 206, 86, 0.2)',
                                                                'rgba(75, 192, 192, 0.2)',
                                                                'rgba(153, 102, 255, 0.2)',
                                                                'rgba(255, 159, 64, 0.2)'
                                                            ],
                                                            borderColor: [
                                                                'rgba(255,99,132,1)',
                                                                'rgba(54, 162, 235, 1)',
                                                                'rgba(255, 206, 86, 1)',
                                                                'rgba(75, 192, 192, 1)',
                                                                'rgba(153, 102, 255, 1)',
                                                                'rgba(255, 159, 64, 1)'
                                                            ],
                                                            borderWidth: 1
                                                        }]
                                                },
                                                options: {
                                                    scales: {
                                                        yAxes: [{
                                                                ticks: {
                                                                    beginAtZero: true
                                                                }
                                                            }]
                                                    }
                                                }
                                            });</script>
                                    </div>
                                    <hr>
                                    <p style="text-align: left; font-weight: bold;">Tendencia de Consumo por Día</p>
                                    <hr>
                                    <input class="easyui-datetimebox" style="color: black;" id="date_reporte_consumo_por_dia" data-options="required:true,showSeconds:false,editable:false" >
                                    <button id='reporte3_dato2'>Consultar</button>
                                    <hr>
                                    <canvas id="radarChart3" style="max-width: 50%; "></canvas>
                                    <script>

                                        var ctxR3 = document.getElementById("radarChart3").getContext('2d');
                                        var myRadarChart = new Chart(ctxR3, {
                                            type: 'radar',
                                            data: {
                                                labels: ["VIDEO", "HTTP", "STREAMING", "MAIL", "OTHERS", "VIDEO", "AUDIO"],
                                                datasets: [{
                                                        label: "Numero de Carnet",
                                                        data: [65, 59, 90, 81, 56, 55, 40],
                                                        backgroundColor: [
                                                            'rgba(105, 0, 132, .2)',
                                                        ],
                                                        borderColor: [
                                                            'rgba(200, 99, 132, .7)',
                                                        ],
                                                        borderWidth: 2
                                                    }/*,
                                                     {
                                                     label: "My Second dataset",
                                                     data: [28, 48, 40, 19, 96, 27, 100],
                                                     backgroundColor: [
                                                     'rgba(0, 250, 220, .2)',
                                                     ],
                                                     borderColor: [
                                                     'rgba(0, 213, 132, .7)',
                                                     ],
                                                     borderWidth: 2
                                                     }*/
                                                ]
                                            },
                                            options: {
                                                responsive: true
                                            }
                                        });
                                    </script>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div title="Conexiones" data-options="iconCls:'icon-reporte-4'" style="padding:10px; width: 100%; height: 100%;">

                    <div class="container-fluid" style="height: 100%; width: 100%;">
                        <div class="row" style="height: 100%; width: 100%;">
                            <div class="col panel_general" style="height: 100%;">
                                <div class="panel_reporte" style="height: 100%; color: black;">

                                    <table style="width:100%; height: 100%;"
                                           id="dg_reportes_listado_usuarios_conexion" >
                                        <thead>
                                            <tr>
                                                <th data-options="field:'ck',checkbox:true"></th>
                                                <th data-options="field:'no_conexion'" align="center" width='120'>Número Conexión</th>
                                                <th data-options="field:'no_usuario'" align="center" width='300'>Usuario</th>
                                                <th data-options="field:'no_tipo_respuesta'" align="center" width='300'>Respuesta Acceso</th>
                                                <th data-options="field:'fecha_conexion'" align="center" width='300'>Fecha Conexión</th>
                                            </tr>
                                        </thead>
                                    </table>
                                    <div id="ft_reporte2" style="padding:2px 5px;">
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
</div>