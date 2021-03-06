<%-- 
    Document   : panelAdministracion
    Created on : 26/09/2019, 03:20:14 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link type="text/css" href="css/GUI/panelAdministracion.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="themes/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript" src="panelAdministracion.js"></script>

<!-- TAGS -->

<div class="container-fluid" style="height: 100%; width: 100%;">
    <div class="row">
        <div class="col" align="center">
            <h5 style="font-weight: bold;"> Dashboard Administrativo </h5>
        </div>
    </div>    
    <hr>
    <div class="row" style="height: 100%; width: 100%;">
        <div class="col" align="center" style="height: 100%; width: 100%;">

            <div id="cc" class="easyui-layout" style="width:100%;height:100%;">
                <div data-options="region:'center',title:'Concurrencia de Servicio Internet Inalambrico - ACTUAL',split:true" style="width:90%; height: 100%;" align='center'>
                    <div class="container-fluid" style="height: 100%; width: 100%;" align='center'>
                        <div class="row" style="width:  100%; height: 100%; " align='center'>
                            <div class="col panel_general" style="width: 100%; height: 96%; margin-top: 1%;" align='center' >
                                <div class="panel_reporte" align='center' style="width: 100%; height: 100%; color: black">

                                    <canvas id="chart" style="height: 0.5vh; width: 0.5vh;"></canvas>

                                    <script defer>

                                        //var chart = new Chart('chart');
                                        var chart = document.getElementById("chart").getContext("2d");

                                        iniciarGrafico();

                                        function actualizarGrafico() {
                                            $.ajax({
                                                url: 'http://172.10.1.100:8080/ECYS-CP/rep-cap?accion=7',
                                                type: 'GET',
                                                async: false,
                                                success: function (data, textStatus, jqXHR) {
                                                    var valores_data = JSON.parse(data);
                                                    chart['data']['labels'] = valores_data.carreras;
                                                    chart['data']['datasets'][0]['data'] = valores_data.contadores;
                                                    chart.update();
                                                }
                                            });
                                        }

                                        function iniciarGrafico() {
                                            var options = {
                                                maintainAspectRatio: false,
                                                responsive: true,
                                                scales: {
                                                    yAxes: [{
                                                            stacked: true,
                                                            gridLines: {
                                                                display: true,
                                                                color: "rgba(255,99,132,0.2)"
                                                            }
                                                        }],
                                                    xAxes: [{
                                                            gridLines: {
                                                                display: false
                                                            }
                                                        }]
                                                }
                                            };
                                            var data = {
                                                labels: ['En proceso'],
                                                datasets: [{
                                                        label: "Usuarios 014",
                                                        backgroundColor: "rgba(75,145,245,0.2)",
                                                        borderColor: "rgba(75,145,245,1)",
                                                        borderWidth: 2,
                                                        hoverBackgroundColor: "rgba(75,145,245,0.4)",
                                                        hoverBorderColor: "rgba(75,145,245,1)",
                                                        data: [0]
                                                    }
                                                ]
                                            };
                                            
                                            chart = new Chart('chart', {
                                                type: 'pie',
                                                data: data,
                                                options: options
                                            });

                                            crearActualizacion();
                                        }

                                        function crearActualizacion() {
                                            setInterval(
                                                    function () {
                                                        actualizarGrafico();
                                                    }, 3000);
                                        }

                                    </script>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--div data-options="region:'west',split:true,collapsed:true" title="West" style="width:50%;">
                    <div class="container-fluid" style="height: 100%; width: 100%;" align='center'>
                        <div class="row" style="width:  100%; height: 100%; " align='center'>
                            <div class="col panel_general" style="width: 100%; height: 98%; " align='center' >
                                <div class="panel_reporte" align='center' style="width: 100%; height: 100%; color: black;">
                                    <h5>Concurrencia por Carrera</h5>
                                    <hr>
                                    <canvas id="myChart" style="max-width: 100%; display: inline-block; "></canvas>
                                    <script>

                                        var ctx = document.getElementById("myChart").getContext('2d');
                                        var myChart = new Chart(ctx, {
                                            type: 'bar',
                                            data: {
                                                labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
                                                datasets: [{
                                                        label: '# of Votes',
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
                                        });

                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div data-options="region:'east',title:'Concurrencia de Usuarios',collapsed:true" style="width:50%;">
                    <div class="container-fluid" style="height: 100%; width: 100%;" align='center'>
                        <div class="row" style="width:  100%; height: 100%; " align='center'>
                            <div class="col panel_general" style="width: 100%; height: 98%; " align='center' >
                                <div class="panel_reporte" align='center' style="width: 100%; height: 100%; color: black;">
                                    <h5>Concurrencia por Año de Carnet</h5>
                                    <hr>
                                    <canvas id="radarChart" style="max-width: 100%; display: inline-block;"></canvas>
                                    <script>

                                        var ctxR = document.getElementById("radarChart").getContext('2d');
                                        var myRadarChart = new Chart(ctxR, {
                                            type: 'radar',
                                            data: {
                                                labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
                                                datasets: [{
                                                        label: "My First dataset",
                                                        data: [65, 59, 90, 81, 56, 55, 40],
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
                                                        data: [28, 48, 40, 19, 96, 27, 100],
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

                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div-->
            </div>
        </div>
    </div>
</div>


<div id="w" class="easyui-window" title="Detalle de Conexiones" data-options="modal:true,inline:true,closed:true,iconCls:'icon-reporte-4'" style="height: 60%; width: 60%;">
    <form>
        <h6>CONTENIDO DE LA HISTORIA</h6>
        <hr>

        <table class="easyui-datagrid">

        </table>

    </form>
</div>

