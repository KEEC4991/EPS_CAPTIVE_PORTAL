<%-- 
    Document   : panelAdministracion
    Created on : 26/09/2019, 03:20:14 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link type="text/css" href="css/GUI/panelAdministracion.css" rel="stylesheet">
<div class="container">
    <div class="row">
        <div class="col" align="center">
            <h5 style="font-weight: bold;"> Panel Administrativo </h5>
        </div>
    </div>    
    <hr style="margin-top: -5px;">
    <div class="row">
        <div class="col">
            <div class="panel_general">
                <div class="container">
                    <div class="row">
                        <div class="col panel_reporte" align="center">
                            <h5 class="card-title" >Reportes</h5>
                            <canvas id="lineChart" style="max-width: 50%;"></canvas>

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
                                });

                            </script>

                            <p class="card-text">Grafico de Reportes.</p>

                            <a class="btn alert-info" style="background-color: #ff0046"> Exp. PDF </a>
                            <a class="btn alert-primary" style="background-color: #2a1758"> Detalle </a>
                            <a class="btn alert-info" style="background-color: #ff2c22"> Actualizar </a>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col panel_reporte" align="center">

                            <canvas id="myChart" style="max-width: 45%; display: inline-block; "></canvas>
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

                            <canvas id="radarChart" style="max-width: 45%; display: inline-block;"></canvas>
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
                    <hr>
                </div>
            </div>
        </div>
    </div>
</div>
