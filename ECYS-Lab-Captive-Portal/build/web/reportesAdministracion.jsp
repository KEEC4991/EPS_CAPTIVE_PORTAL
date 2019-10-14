<%-- 
    Document   : gestionUsuariosAdmin
    Created on : 26/09/2019, 03:59:38 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link type="text/css" rel="stylesheet" href="css/GUI/reportesAdministracion.css">

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/af-2.3.4/b-1.6.0/b-colvis-1.6.0/b-flash-1.6.0/b-html5-1.6.0/b-print-1.6.0/cr-1.5.2/fc-3.3.0/fh-3.1.6/kt-2.5.1/r-2.2.3/rg-1.1.1/rr-1.2.6/sc-2.0.1/sl-1.3.1/datatables.min.css"/>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/af-2.3.4/b-1.6.0/b-colvis-1.6.0/b-flash-1.6.0/b-html5-1.6.0/b-print-1.6.0/cr-1.5.2/fc-3.3.0/fh-3.1.6/kt-2.5.1/r-2.2.3/rg-1.1.1/rr-1.2.6/sc-2.0.1/sl-1.3.1/datatables.min.js"></script>

<link rel="stylesheet" type="text/css" href="themes/black/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>

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

        $('#example').DataTable();

    });
</script>

<div class="container-fluid" style="height: 100%;">
    <div class="row">
        <div class="col" align="center">
            <h5> <b style="font-weight: bold;">Panel de Reportes </b></h5>
        </div>
    </div>
    <hr style="margin-top: -5px;">

    <div class="row" style="height: 100%;">
        <div class="col" style="height: 100%;">
            <div class="easyui-accordion" id="acordeon_reportes" style="width: 100%; height: 100%;">

                <div title="Consumos de Servicio de Internet" data-options="iconCls:'icon-reporte-1'" style="overflow:auto;padding:10px; width: 100%; height: 100%;">

                    <div class="container-fluid" style="height: 100%;">
                        <div class="row" style="height: 100%;">
                            <div class="col panel_general" style="height: 100%;">
                                <div class="panel_reporte" style="height: 100%;" align='center'>

                                    <div align="center">
                                        <p style="width: 45%; display: inline-block;">Fecha Inicial: <input type="text" style="text-align: center; border-radius: 1px;" id="datepicker1"></p>
                                        <p style="width: 45%; display: inline-block;">Fecha Final: <input type="text" style="text-align: center;  border-radius: 1px;" id="datepicker2"></p>
                                    </div>
                                    <hr style="margin-top: -2px;">
                                    <div align="center">
                                        <canvas id="lineChart" style="max-width: 60%;"></canvas>
                                    </div>

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

                                    <!--a class="btn alert-info" style="background-color: #ff0046"> Exp. PDF </a-->
                                    <a class="btn alert-primary" style="background-color: #2a1758"> Detalle </a>
                                    <a class="btn alert-info" style="background-color: #ff2c22"> Actualizar </a>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div title="Carácteristicas de la Población" data-options="iconCls:'icon-reporte-2'" style="overflow:auto;padding:10px; width: 100%; height: 100%;">

                    <div class="container-fluid" style="height: 150%;">
                        <div class="row" style="height: 100%;">
                            <div class="col panel_general" style="height: 100%;">
                                <div class="container-fluid panel_reporte" style="height: 100%;">
                                    <br>

                                    <div class="row" style="height: 60%;" align='center'>
                                        <div class="col" style="height: 100%;" align='center'>

                                            <canvas id="myChart" style="max-width: 70%; "></canvas>

                                            <script>
                                                var ctx = document.getElementById("myChart").getContext('2d');
                                                var myChart = new Chart(ctx, {
                                                    type: 'bar',
                                                    data: {
                                                        labels: ["Civil", "Quimica", "Industrial", "Electrica", "Mecánica", "Mecánica Electrica"],
                                                        datasets: [{
                                                                label: 'Estudiantes por Carrera',
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
                                    <hr>

                                    <div class="row" style="height: 50%;" align='center'>
                                        <div class="col" style="height: 100%;" align='center'>

                                            <canvas id="radarChart1" style="max-width: 33%; display: inline-block; "></canvas>
                                            <canvas id="radarChart2" style="max-width: 33%; display: inline-block; "></canvas>
                                            <script>
                                                //radar
                                                var ctxR1 = document.getElementById("radarChart1").getContext('2d');
                                                var ctxR2 = document.getElementById("radarChart2").getContext('2d');
                                                var myRadarChart = new Chart(ctxR1, {
                                                    type: 'radar',
                                                    data: {
                                                        labels: ["2010", "2011", "2012", "2013", "2014", "2015", "2016"],
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
                                                var myRadarChart = new Chart(ctxR2, {
                                                    type: 'radar',
                                                    data: {
                                                        labels: ["10-15", "16-20", "21-25", "26-30", "31-35", "36-40", "41-45"],
                                                        datasets: [/*{
                                                         label: "Edad",
                                                         data: [65, 59, 90, 81, 56, 55, 40],
                                                         backgroundColor: [
                                                         'rgba(105, 0, 132, .2)',
                                                         ],
                                                         borderColor: [
                                                         'rgba(200, 99, 132, .7)',
                                                         ],
                                                         borderWidth: 2
                                                         },*/
                                                            {
                                                                label: "Edad de los Usuarios",
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
                        </div>
                    </div>

                </div>

                <div title="Dispositivos Conectados" data-options="iconCls:'icon-reporte-3'" style="overflow:auto;padding:10px; width: 100%; height: 100%;" >

                    <div class="container-fluid" style="height: 170%;">
                        <div class="row" style="height: 100%;">
                            <div class="col panel_general" style="height: 100%;">
                                <div class="panel_reporte" style="height: 100%; color: black;" align='center'>

                                    <h6 style="text-align: left;">Dispositivos Conectados por Día</h6>
                                    <hr>
                                    <div>
                                        <div align="center">
                                            <p style="width: 45%; display: inline-block;">Fecha Inicial: <input type="text" style="text-align: center; border-radius: 1px;" id="datepicker3"></p>
                                            <p style="width: 45%; display: inline-block;">Fecha Final: <input type="text" style="text-align: center;  border-radius: 1px;" id="datepicker4"></p>
                                        </div>
                                    </div>
                                    <hr style="margin-top: -2px;">
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
                                            });
                                        </script>
                                    </div>
                                    <hr>
                                    <h6 style="text-align: left;">Tendencia de Consumo por Día</h6>
                                    <hr>
                                    <p style="width: 25%; display: inline-block;">Fecha Tendencia Consumo: <input type="text" style="text-align: center; border-radius: 1px;" id="datepicker5"></p>
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
                                    <br>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div title="Conexiones" data-options="iconCls:'icon-reporte-4'" style="overflow:auto;padding:10px; width: 100%; height: 100%;">

                    <div class="container-fluid" style="height: 100%;">
                        <div class="row" style="height: 100%;">
                            <div class="col panel_general" style="height: 100%;">
                                <div class="panel_reporte" style="height: 100%; color: black;">

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

                                    <div>
                                        <h5 style="font-weight: bold;"></h5>
                                    </div>
                                    <table id="example" class="display" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>NOMBRE USUARIO</th>
                                                <th>DIRECCIÓN IP</th>
                                                <th>FECHA</th>
                                                <th>INICIO CONEXIÓN</th>
                                                <th>FIN DE CONEXIÓN</th>
                                                <th>MAC</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                                <td>$320,800</td>
                                            </tr>
                                            <tr>
                                                <td>Garrett Winters</td>
                                                <td>Accountant</td>
                                                <td>Tokyo</td>
                                                <td>63</td>
                                                <td>2011/07/25</td>
                                                <td>$170,750</td>
                                            </tr>
                                            <tr>
                                                <td>Ashton Cox</td>
                                                <td>Junior Technical Author</td>
                                                <td>San Francisco</td>
                                                <td>66</td>
                                                <td>2009/01/12</td>
                                                <td>$86,000</td>
                                            </tr>
                                            <tr>
                                                <td>Cedric Kelly</td>
                                                <td>Senior Javascript Developer</td>
                                                <td>Edinburgh</td>
                                                <td>22</td>
                                                <td>2012/03/29</td>
                                                <td>$433,060</td>
                                            </tr>
                                            <tr>
                                                <td>Airi Satou</td>
                                                <td>Accountant</td>
                                                <td>Tokyo</td>
                                                <td>33</td>
                                                <td>2008/11/28</td>
                                                <td>$162,700</td>
                                            </tr>
                                            <tr>
                                                <td>Brielle Williamson</td>
                                                <td>Integration Specialist</td>
                                                <td>New York</td>
                                                <td>61</td>
                                                <td>2012/12/02</td>
                                                <td>$372,000</td>
                                            </tr>
                                            <tr>
                                                <td>Herrod Chandler</td>
                                                <td>Sales Assistant</td>
                                                <td>San Francisco</td>
                                                <td>59</td>
                                                <td>2012/08/06</td>
                                                <td>$137,500</td>
                                            </tr>
                                            <tr>
                                                <td>Rhona Davidson</td>
                                                <td>Integration Specialist</td>
                                                <td>Tokyo</td>
                                                <td>55</td>
                                                <td>2010/10/14</td>
                                                <td>$327,900</td>
                                            </tr>
                                            <tr>
                                                <td>Colleen Hurst</td>
                                                <td>Javascript Developer</td>
                                                <td>San Francisco</td>
                                                <td>39</td>
                                                <td>2009/09/15</td>
                                                <td>$205,500</td>
                                            </tr>
                                            <tr>
                                                <td>Sonya Frost</td>
                                                <td>Software Engineer</td>
                                                <td>Edinburgh</td>
                                                <td>23</td>
                                                <td>2008/12/13</td>
                                                <td>$103,600</td>
                                            </tr>
                                            <tr>
                                                <td>Jena Gaines</td>
                                                <td>Office Manager</td>
                                                <td>London</td>
                                                <td>30</td>
                                                <td>2008/12/19</td>
                                                <td>$90,560</td>
                                            </tr>
                                            <tr>
                                                <td>Quinn Flynn</td>
                                                <td>Support Lead</td>
                                                <td>Edinburgh</td>
                                                <td>22</td>
                                                <td>2013/03/03</td>
                                                <td>$342,000</td>
                                            </tr>
                                            <tr>
                                                <td>Charde Marshall</td>
                                                <td>Regional Director</td>
                                                <td>San Francisco</td>
                                                <td>36</td>
                                                <td>2008/10/16</td>
                                                <td>$470,600</td>
                                            </tr>
                                            <tr>
                                                <td>Haley Kennedy</td>
                                                <td>Senior Marketing Designer</td>
                                                <td>London</td>
                                                <td>43</td>
                                                <td>2012/12/18</td>
                                                <td>$313,500</td>
                                            </tr>
                                            <tr>
                                                <td>Tatyana Fitzpatrick</td>
                                                <td>Regional Director</td>
                                                <td>London</td>
                                                <td>19</td>
                                                <td>2010/03/17</td>
                                                <td>$385,750</td>
                                            </tr>
                                            <tr>
                                                <td>Michael Silva</td>
                                                <td>Marketing Designer</td>
                                                <td>London</td>
                                                <td>66</td>
                                                <td>2012/11/27</td>
                                                <td>$198,500</td>
                                            </tr>
                                            <tr>
                                                <td>Paul Byrd</td>
                                                <td>Chief Financial Officer (CFO)</td>
                                                <td>New York</td>
                                                <td>64</td>
                                                <td>2010/06/09</td>
                                                <td>$725,000</td>
                                            </tr>
                                            <tr>
                                                <td>Gloria Little</td>
                                                <td>Systems Administrator</td>
                                                <td>New York</td>
                                                <td>59</td>
                                                <td>2009/04/10</td>
                                                <td>$237,500</td>
                                            </tr>
                                            <tr>
                                                <td>Bradley Greer</td>
                                                <td>Software Engineer</td>
                                                <td>London</td>
                                                <td>41</td>
                                                <td>2012/10/13</td>
                                                <td>$132,000</td>
                                            </tr>
                                            <tr>
                                                <td>Dai Rios</td>
                                                <td>Personnel Lead</td>
                                                <td>Edinburgh</td>
                                                <td>35</td>
                                                <td>2012/09/26</td>
                                                <td>$217,500</td>
                                            </tr>
                                            <tr>
                                                <td>Jenette Caldwell</td>
                                                <td>Development Lead</td>
                                                <td>New York</td>
                                                <td>30</td>
                                                <td>2011/09/03</td>
                                                <td>$345,000</td>
                                            </tr>
                                            <tr>
                                                <td>Yuri Berry</td>
                                                <td>Chief Marketing Officer (CMO)</td>
                                                <td>New York</td>
                                                <td>40</td>
                                                <td>2009/06/25</td>
                                                <td>$675,000</td>
                                            </tr>
                                            <tr>
                                                <td>Caesar Vance</td>
                                                <td>Pre-Sales Support</td>
                                                <td>New York</td>
                                                <td>21</td>
                                                <td>2011/12/12</td>
                                                <td>$106,450</td>
                                            </tr>
                                            <tr>
                                                <td>Doris Wilder</td>
                                                <td>Sales Assistant</td>
                                                <td>Sidney</td>
                                                <td>23</td>
                                                <td>2010/09/20</td>
                                                <td>$85,600</td>
                                            </tr>
                                            <tr>
                                                <td>Angelica Ramos</td>
                                                <td>Chief Executive Officer (CEO)</td>
                                                <td>London</td>
                                                <td>47</td>
                                                <td>2009/10/09</td>
                                                <td>$1,200,000</td>
                                            </tr>
                                            <tr>
                                                <td>Gavin Joyce</td>
                                                <td>Developer</td>
                                                <td>Edinburgh</td>
                                                <td>42</td>
                                                <td>2010/12/22</td>
                                                <td>$92,575</td>
                                            </tr>
                                            <tr>
                                                <td>Jennifer Chang</td>
                                                <td>Regional Director</td>
                                                <td>Singapore</td>
                                                <td>28</td>
                                                <td>2010/11/14</td>
                                                <td>$357,650</td>
                                            </tr>
                                            <tr>
                                                <td>Brenden Wagner</td>
                                                <td>Software Engineer</td>
                                                <td>San Francisco</td>
                                                <td>28</td>
                                                <td>2011/06/07</td>
                                                <td>$206,850</td>
                                            </tr>
                                            <tr>
                                                <td>Fiona Green</td>
                                                <td>Chief Operating Officer (COO)</td>
                                                <td>San Francisco</td>
                                                <td>48</td>
                                                <td>2010/03/11</td>
                                                <td>$850,000</td>
                                            </tr>
                                            <tr>
                                                <td>Shou Itou</td>
                                                <td>Regional Marketing</td>
                                                <td>Tokyo</td>
                                                <td>20</td>
                                                <td>2011/08/14</td>
                                                <td>$163,000</td>
                                            </tr>
                                            <tr>
                                                <td>Michelle House</td>
                                                <td>Integration Specialist</td>
                                                <td>Sidney</td>
                                                <td>37</td>
                                                <td>2011/06/02</td>
                                                <td>$95,400</td>
                                            </tr>
                                            <tr>
                                                <td>Suki Burks</td>
                                                <td>Developer</td>
                                                <td>London</td>
                                                <td>53</td>
                                                <td>2009/10/22</td>
                                                <td>$114,500</td>
                                            </tr>
                                            <tr>
                                                <td>Prescott Bartlett</td>
                                                <td>Technical Author</td>
                                                <td>London</td>
                                                <td>27</td>
                                                <td>2011/05/07</td>
                                                <td>$145,000</td>
                                            </tr>
                                            <tr>
                                                <td>Gavin Cortez</td>
                                                <td>Team Leader</td>
                                                <td>San Francisco</td>
                                                <td>22</td>
                                                <td>2008/10/26</td>
                                                <td>$235,500</td>
                                            </tr>
                                            <tr>
                                                <td>Martena Mccray</td>
                                                <td>Post-Sales support</td>
                                                <td>Edinburgh</td>
                                                <td>46</td>
                                                <td>2011/03/09</td>
                                                <td>$324,050</td>
                                            </tr>
                                            <tr>
                                                <td>Unity Butler</td>
                                                <td>Marketing Designer</td>
                                                <td>San Francisco</td>
                                                <td>47</td>
                                                <td>2009/12/09</td>
                                                <td>$85,675</td>
                                            </tr>
                                            <tr>
                                                <td>Howard Hatfield</td>
                                                <td>Office Manager</td>
                                                <td>San Francisco</td>
                                                <td>51</td>
                                                <td>2008/12/16</td>
                                                <td>$164,500</td>
                                            </tr>
                                            <tr>
                                                <td>Hope Fuentes</td>
                                                <td>Secretary</td>
                                                <td>San Francisco</td>
                                                <td>41</td>
                                                <td>2010/02/12</td>
                                                <td>$109,850</td>
                                            </tr>
                                            <tr>
                                                <td>Vivian Harrell</td>
                                                <td>Financial Controller</td>
                                                <td>San Francisco</td>
                                                <td>62</td>
                                                <td>2009/02/14</td>
                                                <td>$452,500</td>
                                            </tr>
                                            <tr>
                                                <td>Timothy Mooney</td>
                                                <td>Office Manager</td>
                                                <td>London</td>
                                                <td>37</td>
                                                <td>2008/12/11</td>
                                                <td>$136,200</td>
                                            </tr>
                                            <tr>
                                                <td>Jackson Bradshaw</td>
                                                <td>Director</td>
                                                <td>New York</td>
                                                <td>65</td>
                                                <td>2008/09/26</td>
                                                <td>$645,750</td>
                                            </tr>
                                            <tr>
                                                <td>Olivia Liang</td>
                                                <td>Support Engineer</td>
                                                <td>Singapore</td>
                                                <td>64</td>
                                                <td>2011/02/03</td>
                                                <td>$234,500</td>
                                            </tr>
                                            <tr>
                                                <td>Bruno Nash</td>
                                                <td>Software Engineer</td>
                                                <td>London</td>
                                                <td>38</td>
                                                <td>2011/05/03</td>
                                                <td>$163,500</td>
                                            </tr>
                                            <tr>
                                                <td>Sakura Yamamoto</td>
                                                <td>Support Engineer</td>
                                                <td>Tokyo</td>
                                                <td>37</td>
                                                <td>2009/08/19</td>
                                                <td>$139,575</td>
                                            </tr>
                                            <tr>
                                                <td>Thor Walton</td>
                                                <td>Developer</td>
                                                <td>New York</td>
                                                <td>61</td>
                                                <td>2013/08/11</td>
                                                <td>$98,540</td>
                                            </tr>
                                            <tr>
                                                <td>Finn Camacho</td>
                                                <td>Support Engineer</td>
                                                <td>San Francisco</td>
                                                <td>47</td>
                                                <td>2009/07/07</td>
                                                <td>$87,500</td>
                                            </tr>
                                            <tr>
                                                <td>Serge Baldwin</td>
                                                <td>Data Coordinator</td>
                                                <td>Singapore</td>
                                                <td>64</td>
                                                <td>2012/04/09</td>
                                                <td>$138,575</td>
                                            </tr>
                                            <tr>
                                                <td>Zenaida Frank</td>
                                                <td>Software Engineer</td>
                                                <td>New York</td>
                                                <td>63</td>
                                                <td>2010/01/04</td>
                                                <td>$125,250</td>
                                            </tr>
                                            <tr>
                                                <td>Zorita Serrano</td>
                                                <td>Software Engineer</td>
                                                <td>San Francisco</td>
                                                <td>56</td>
                                                <td>2012/06/01</td>
                                                <td>$115,000</td>
                                            </tr>
                                            <tr>
                                                <td>Jennifer Acosta</td>
                                                <td>Junior Javascript Developer</td>
                                                <td>Edinburgh</td>
                                                <td>43</td>
                                                <td>2013/02/01</td>
                                                <td>$75,650</td>
                                            </tr>
                                            <tr>
                                                <td>Cara Stevens</td>
                                                <td>Sales Assistant</td>
                                                <td>New York</td>
                                                <td>46</td>
                                                <td>2011/12/06</td>
                                                <td>$145,600</td>
                                            </tr>
                                            <tr>
                                                <td>Hermione Butler</td>
                                                <td>Regional Director</td>
                                                <td>London</td>
                                                <td>47</td>
                                                <td>2011/03/21</td>
                                                <td>$356,250</td>
                                            </tr>
                                            <tr>
                                                <td>Lael Greer</td>
                                                <td>Systems Administrator</td>
                                                <td>London</td>
                                                <td>21</td>
                                                <td>2009/02/27</td>
                                                <td>$103,500</td>
                                            </tr>
                                            <tr>
                                                <td>Jonas Alexander</td>
                                                <td>Developer</td>
                                                <td>San Francisco</td>
                                                <td>30</td>
                                                <td>2010/07/14</td>
                                                <td>$86,500</td>
                                            </tr>
                                            <tr>
                                                <td>Shad Decker</td>
                                                <td>Regional Director</td>
                                                <td>Edinburgh</td>
                                                <td>51</td>
                                                <td>2008/11/13</td>
                                                <td>$183,000</td>
                                            </tr>
                                            <tr>
                                                <td>Michael Bruce</td>
                                                <td>Javascript Developer</td>
                                                <td>Singapore</td>
                                                <td>29</td>
                                                <td>2011/06/27</td>
                                                <td>$183,000</td>
                                            </tr>
                                            <tr>
                                                <td>Donna Snider</td>
                                                <td>Customer Support</td>
                                                <td>New York</td>
                                                <td>27</td>
                                                <td>2011/01/25</td>
                                                <td>$112,000</td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>NOMBRE USUARIO</th>
                                                <th>DIRECCIÓN IP</th>
                                                <th>Office</th>
                                                <th>INICIO DE CONEXIÓN</th>
                                                <th>FIN DE CONEXIÓN</th>
                                                <th>MAC</th>
                                            </tr>
                                        </tfoot>
                                    </table>

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