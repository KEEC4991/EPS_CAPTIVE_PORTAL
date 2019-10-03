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


        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/core/jquery.min.js"></script>

        <link rel="shortcut icon" href="images/logo.png">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/fontawsom-all.min.css">

        <link rel="stylesheet" type="text/css" href="css/w3.css"/>
        <link rel="stylesheet" type="text/css" href="css/css.css"/>
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/fontawsom-all.min.css"/>
        <link rel="stylesheet" type="text/scss" href="scss/mdb.scss"/>
        <link rel="stylesheet" type="text/css" href="css/mdb.css"/>
        <link href="css/addons/datatables.css" rel="stylesheet"/>
        <link href="css/addons/datatables-select.min.css" rel="stylesheet"/>
        <link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet"/>
        <link href="css/jquery-ui.css" rel="stylesheet" />

        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/script.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/addons/datatables.min.js"></script>

        <script src="js/modules/waves.js"></script>
        <script src="js/mdb.js"></script>
        <script src="js/addons/datatables.js"></script>
        <script src="js/addons/datatables-select.min.js"></script>

        <script src="admin.js" type="text/javascript"></script>

        <script src="js/moment.js"></script>
        <script src="js/jquery-ui.js"></script>

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

            </div>

        </div>

        <!--script src="assets/js/core/jquery.min.js"></script-->
        <script src="assets/js/core/popper.min.js"></script>
        <script src="assets/js/core/bootstrap-material-design.min.js"></script>
        <script src="https://unpkg.com/default-passive-events"></script>
        <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>

        <script async defer src="https://buttons.github.io/buttons.js"></script>

        <!--script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script-->

        <script src="assets/js/plugins/chartist.min.js"></script>

        <script src="assets/js/plugins/bootstrap-notify.js"></script>

        <script src="assets/js/material-dashboard.js?v=2.1.0"></script>

        <!--script src="assets/demo/demo.js"></script-->

        <!--script>
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
        </script-->


    </body>
</html>
