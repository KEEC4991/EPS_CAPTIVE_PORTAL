<%-- 
    Document   : admin
    Created on : 26/09/2019, 01:41:20 AM
    Author     : kgmt4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title> ADMIN ECYS - Portal Cautivo </title>

        <link rel="shortcut icon" href="images/logo.png">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/fontawsom-all.min.css">
        <!--link rel="stylesheet" type="text/css" href="css/admin.css" /-->
        <link rel="stylesheet" type="text/css" href="css/w3.css"/>
        <link rel="stylesheet" type="text/css" href="css/css.css"/>
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/fontawsom-all.min.css"/>
        <link rel="stylesheet" type="text/scss" href="scss/mdb.scss"/>
        <link rel="stylesheet" type="text/css" href="css/mdb.css"/>
        <link href="css/addons/datatables.css" rel="stylesheet">
        <link href="css/addons/datatables-select.min.css" rel="stylesheet">
        <link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet"/>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/script.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/addons/datatables.min.js"></script>

        <script src="js/modules/waves.js"></script>
        <script src="js/mdb.js"></script>
        <script src="js/addons/datatables.js"></script>
        <script src="js/addons/datatables-select.min.js"></script>

        <script src="admin.js" type="text/javascript"></script>

    </head>
    <body class="">

        <div class="wrapper ">
            <div class="sidebar" data-color="orange" data-background-color="black" data-image="images/fondo.jpg">
                <div class="logo">
                    <a href="#" class="simple-text logo-normal">
                        - Portal Cautivo -<br>
                        ECYS<br>
                        <img src="images/logo.png" style="width: 30%; ; border-radius: 50%;" onclick="cambioPanel(1)" >
                    </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(6)">
                                <i class="material-icons">dashboard</i>
                                <p>Dashboard Administrativo</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(2)">
                                <i class="material-icons">assessment</i>
                                <p>Reportes</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(3)">
                                <i class="material-icons">supervised_user_circle</i>
                                <p>Gestion de Usuarios</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(4)">
                                <i class="material-icons">verified_user</i>
                                <p>Politicas</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0)" onclick="cambioPanel(5)">
                                <i class="material-icons">highlight_off</i>
                                <p>Cerrar Sesión</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <!--a class="navbar-brand" href="javascript:void(0)"><b>Administrador</b></a-->
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index"  aria-label="Toggle navigation">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(){$('.alert').alert();}">
                                        <i class="material-icons">notifications</i>
                                        <p class="d-lg-none d-md-block">
                                            Notifications
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <!-- End Navbar -->

                <!-- PANELES DE TIPOS -->

                <div class="content" >
                    <div class="container-fluid" id="bodyAdministrador" >

                        <h5>NO SE QUE ES ESTO</h5>

                    </div>
                </div>

                <!--div class="content" >
                    <div class="container-fluid">
                        <hr>

                        <div class="card"  style="margin-left: 0%;  width: 100%; height: 50%;">
                            <div class="card-body">
                                <h5 class="card-title">Administrador</h5>

                                <canvas id="myChart" style="max-width: 30%; float: left;"></canvas>
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

                                <canvas id="radarChart" style="max-width: 30%; float: left;"></canvas>
                                <script>
                                    //radar
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

                                <canvas id="doughnutChart" style="max-width: 30% "></canvas>
                                <script>
                                    //doughnut
                                    var ctxD = document.getElementById("doughnutChart").getContext('2d');
                                    var myLineChart = new Chart(ctxD, {
                                        type: 'doughnut',
                                        data: {
                                            labels: ["Red", "Green", "Yellow", "Grey", "Dark Grey"],
                                            datasets: [{
                                                    data: [300, 50, 100, 40, 120],
                                                    backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360"],
                                                    hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774"]
                                                }]
                                        },
                                        options: {
                                            responsive: true
                                        }
                                    });

                                </script>

                                <p class="card-text">Graficos de Administración</p>
                                <a class="btn alert-info" style="background-color: #ff0046"> Exp. PDF </a>
                                <a class="btn alert-primary" style="background-color: #2a1758"> Detalle </a>
                                <a class="btn alert-info" style="background-color: #ff2c22"> Actualizar </a>

                            </div>
                        </div>      

                        <div class="card" style="margin-left: 0%;  width: 100%; height: 50%;">
                            <div class="card-body">
                                <h5 class="card-title">Reportes</h5>

                                <div class="container">
                                    <div class="row">
                                        <div class="col" align="center">
                                            <canvas id="lineChart" style="max-width: 50%;"></canvas>
                                        </div>
                                    </div>
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

                                <a class="btn alert-info" style="background-color: #ff0046"> Exp. PDF </a>
                                <a class="btn alert-primary" style="background-color: #2a1758"> Detalle </a>
                                <a class="btn alert-info" style="background-color: #ff2c22"> Actualizar </a>

                            </div>
                        </div>      

                        <div class="card" style="margin-left: 0%;  width: 100%; height: 50%;" >
                            <div class="card-body">

                                <h5 class="card-title">Gestión de Usuarios</h5>

                                <table id="dt-select" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Extn.</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Extn.</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>

                            <script>
                                var dataSet = [
                                    ["Tiger Nixon", "System Architect", "Edinburgh", "5421", "2011-04-25", "$320,800"],
                                    ["Garrett Winters", "Accountant", "Tokyo", "8422", "2011-07-25", "$170,750"],
                                    ["Ashton Third Cox", "Junior Technical Author", "San Francisco", "1562", "2009-01-12", "$86,000"],
                                    ["Cedric Kelly", "Senior Javascript Developer", "Edinburgh", "6224", "2012-03-29", "$433,060"],
                                    ["Airi", "Accountant", "Tokyo", "5407", "2008-11-28", "$162,700"],
                                    ["Brielle Williamson Need More Space To Check It", "Integration Specialist", "New York", "4804", "2012-12-02",
                                        "$372,000"
                                    ],
                                    ["Herrod Chandler", "Sales Assistant", "San Francisco", "9608", "2012-08-06", "$137,500"],
                                    ["Rhona Davidson", "Integration Specialist", "Tokyo", "6200", "2010-10-14", "$327,900"],
                                    ["Colleen Hurst", "Javascript Developer", "San Francisco", "2360", "2009-09-15", "$205,500"],
                                    ["Sonya Frost", "Software Engineer", "Edinburgh", "1667", "2008-12-13", "$103,600"],
                                    ["Jena Gaines", "Office Manager", "London", "3814", "2008-12-19", "$90,560"],
                                    ["Quinn Flynn", "Support Lead", "Edinburgh", "9497", "2013-03-03", "$342,000"],
                                    ["Charde Marshall", "Regional Director", "San Francisco", "6741", "2008-10-16", "$470,600"],
                                    ["Haley Kennedy", "Senior Marketing Designer", "London", "3597", "2012-12-18", "$313,500"],
                                    ["Tatyana Fitzpatrick", "Regional Director", "London", "1965", "2010-03-17", "$385,750"],
                                    ["Michael Silva", "Marketing Designer", "London", "1581", "2012-11-27", "$198,500"],
                                    ["Paul Byrd", "Chief Financial Officer (CFO)", "New York", "3059", "2010-06-09", "$725,000"],
                                    ["Gloria Little", "Systems Administrator", "New York", "1721", "2009-04-10", "$237,500"],
                                    ["Bradley Fourth Fourth Greer", "Software Engineer", "London", "2558", "2012-10-13", "$132,000"],
                                    ["Dai Rios", "Personnel Lead", "Edinburgh", "2290", "2012-09-26", "$217,500"],
                                    ["Jenette Caldwell", "Development Lead", "New York", "1937", "2011-09-03", "$345,000"],
                                    ["Yuri Berry", "Chief Marketing Officer (CMO)", "New York", "6154", "2009-06-25", "$675,000"],
                                    ["Caesar Vance", "Pre-Sales Support", "New York", "8330", "2011-12-12", "$106,450"],
                                    ["Doris Wilder", "Sales Assistant", "Sidney", "3023", "2010-09-20", "$85,600"],
                                    ["Angelica Ramos", "Chief Executive Officer (CEO)", "London", "5797", "2009-10-09", "$1,200,000"],
                                    ["Gavin Joyce", "Developer", "Edinburgh", "8822", "2010-12-22", "$92,575"],
                                    ["Jennifer Chang", "Regional Director", "Singapore", "9239", "2010-11-14", "$357,650"],
                                    ["Brenden Fifth Example Some Wagner", "Software Engineer", "San Francisco", "1314", "2011-06-07", "$206,850"],
                                    ["Fiona Green", "Chief Operating Officer (COO)", "San Francisco", "2947", "2010-03-11", "$850,000"],
                                    ["Shou Itou", "Regional Marketing", "Tokyo", "8899", "2011-08-14", "$163,000"],
                                    ["Michelle House", "Integration Specialist", "Sidney", "2769", "2011-06-02", "$95,400"],
                                    ["Suki Burks", "Developer", "London", "6832", "2009-10-22", "$114,500"],
                                    ["Prescott Bartlett", "Technical Author", "London", "3606", "2011-05-07", "$145,000"],
                                    ["Gavin Cortez", "Team Leader", "San Francisco", "2860", "2008-10-26", "$235,500"],
                                    ["Martena Mccray", "Post-Sales support", "Edinburgh", "8240", "2011-03-09", "$324,050"],
                                    ["Unity Butler", "Marketing Designer", "San Francisco", "5384", "2009-12-09", "$85,675"]
                                ];

                                $(document).ready(function () {
                                    var table = $('#dt-select').DataTable({
                                        data: dataSet,
                                        columns: [{
                                                title: "Name"
                                            },
                                            {
                                                title: "Position"
                                            },
                                            {
                                                title: "Office"
                                            },
                                            {
                                                title: "Extn."
                                            },
                                            {
                                                title: "Start date"
                                            },
                                            {
                                                title: "Salary"
                                            }
                                        ],
                                        dom: 'Bfrtip',
                                        select: true,
                                        buttons: [{
                                                text: 'Select all',
                                                action: function () {
                                                    table.rows().select();
                                                }
                                            },
                                            {
                                                text: 'Select none',
                                                action: function () {
                                                    table.rows().deselect();
                                                }
                                            }
                                        ]
                                    });
                                });
                            </script>


                            <p class="card-text">Some quick example text to build on the panel title and make up the bulk of the panel's content.</p>
                            <a class="card-link">Card link</a>
                            <a class="card-link">Another link</a>

                        </div>
                    </div>      

                    <div class="card" style="margin-left: 0%;  width: 100%; height: 50%;">
                        <div class="card-body">
                            <h5 class="card-title">Políticas</h5>
                            <p class="card-text">Some quick example text to build on the panel title and make up the bulk of the panel's content.</p>
                            <a class="card-link">Card link</a>
                            <a class="card-link">Another link</a>

                        </div>
                    </div>      

                    <div class="card" style="margin-left: 0%;  width: 100%; height: 50%;">
                        <div class="card-body">
                            <h5 class="card-title">Cerrar Sesión</h5>
                            <p class="card-text">Some quick example text to build on the panel title and make up the bulk of the panel's content.</p>
                            <a class="card-link">Card link</a>
                            <a class="card-link">Another link</a>
                        </div>
                    </div>      


                </div-->
            </div>

        </div>

        <script src="assets/js/core/jquery.min.js"></script>
        <script src="assets/js/core/popper.min.js"></script>
        <script src="assets/js/core/bootstrap-material-design.min.js"></script>
        <script src="https://unpkg.com/default-passive-events"></script>
        <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>

        <script async defer src="https://buttons.github.io/buttons.js"></script>

        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

        <script src="assets/js/plugins/chartist.min.js"></script>

        <script src="assets/js/plugins/bootstrap-notify.js"></script>

        <script src="assets/js/material-dashboard.js?v=2.1.0"></script>

        <script src="assets/demo/demo.js"></script>
        <script>
                                $(document).ready(function () {
                                    $().ready(function () {
                                        $sidebar = $('.sidebar');

                                        $sidebar_img_container = $sidebar.find('.sidebar-background');

                                        $full_page = $('.full-page');

                                        $sidebar_responsive = $('body > .navbar-collapse');

                                        window_width = $(window).width();

                                        $('.fixed-plugin a').click(function (event) {
                                            // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                                            if ($(this).hasClass('switch-trigger')) {
                                                if (event.stopPropagation) {
                                                    event.stopPropagation();
                                                } else if (window.event) {
                                                    window.event.cancelBubble = true;
                                                }
                                            }
                                        });

                                        $('.fixed-plugin .active-color span').click(function () {
                                            $full_page_background = $('.full-page-background');

                                            $(this).siblings().removeClass('active');
                                            $(this).addClass('active');

                                            var new_color = $(this).data('color');

                                            if ($sidebar.length != 0) {
                                                $sidebar.attr('data-color', new_color);
                                            }

                                            if ($full_page.length != 0) {
                                                $full_page.attr('filter-color', new_color);
                                            }

                                            if ($sidebar_responsive.length != 0) {
                                                $sidebar_responsive.attr('data-color', new_color);
                                            }
                                        });

                                        $('.fixed-plugin .background-color .badge').click(function () {
                                            $(this).siblings().removeClass('active');
                                            $(this).addClass('active');

                                            var new_color = $(this).data('background-color');

                                            if ($sidebar.length != 0) {
                                                $sidebar.attr('data-background-color', new_color);
                                            }
                                        });

                                        $('.fixed-plugin .img-holder').click(function () {
                                            $full_page_background = $('.full-page-background');

                                            $(this).parent('li').siblings().removeClass('active');
                                            $(this).parent('li').addClass('active');


                                            var new_image = $(this).find("img").attr('src');

                                            if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                                                $sidebar_img_container.fadeOut('fast', function () {
                                                    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                                    $sidebar_img_container.fadeIn('fast');
                                                });
                                            }

                                            if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                                                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                                                $full_page_background.fadeOut('fast', function () {
                                                    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                                    $full_page_background.fadeIn('fast');
                                                });
                                            }

                                            if ($('.switch-sidebar-image input:checked').length == 0) {
                                                var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                                                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                                                $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                                                $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                                            }

                                            if ($sidebar_responsive.length != 0) {
                                                $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                                            }
                                        });

                                        $('.switch-sidebar-image input').change(function () {
                                            $full_page_background = $('.full-page-background');

                                            $input = $(this);

                                            if ($input.is(':checked')) {
                                                if ($sidebar_img_container.length != 0) {
                                                    $sidebar_img_container.fadeIn('fast');
                                                    $sidebar.attr('data-image', '#');
                                                }

                                                if ($full_page_background.length != 0) {
                                                    $full_page_background.fadeIn('fast');
                                                    $full_page.attr('data-image', '#');
                                                }

                                                background_image = true;
                                            } else {
                                                if ($sidebar_img_container.length != 0) {
                                                    $sidebar.removeAttr('data-image');
                                                    $sidebar_img_container.fadeOut('fast');
                                                }

                                                if ($full_page_background.length != 0) {
                                                    $full_page.removeAttr('data-image', '#');
                                                    $full_page_background.fadeOut('fast');
                                                }

                                                background_image = false;
                                            }
                                        });

                                        $('.switch-sidebar-mini input').change(function () {
                                            $body = $('body');

                                            $input = $(this);

                                            if (md.misc.sidebar_mini_active == true) {
                                                $('body').removeClass('sidebar-mini');
                                                md.misc.sidebar_mini_active = false;

                                                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                                            } else {

                                                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                                                setTimeout(function () {
                                                    $('body').addClass('sidebar-mini');

                                                    md.misc.sidebar_mini_active = true;
                                                }, 300);
                                            }

                                            // we simulate the window Resize so the charts will get updated in realtime.
                                            var simulateWindowResize = setInterval(function () {
                                                window.dispatchEvent(new Event('resize'));
                                            }, 180);

                                            // we stop the simulation of Window Resize after the animations are completed
                                            setTimeout(function () {
                                                clearInterval(simulateWindowResize);
                                            }, 1000);

                                        });
                                    });
                                });
        </script>

    </body>
</html>
