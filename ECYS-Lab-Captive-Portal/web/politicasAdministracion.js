/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {



});


function cargaMenu(accion) {


    switch (accion) {
        case 1:
        {
            $('#pill_menu1').attr('href', '#menu1');
            $('#menu1').load('politicasContenedor/administracionUsuarios.jsp');
            break;
        }
        case 2:
        {
            $('#pill_menu2').attr('href', '#menu2');
            $('#menu1').load('politicasContenedor/generalesGestion.jsp');
            break;
        }
        case 3:
        {
            $('#pill_menu3').attr('href', '#menu3');
            $('#menu1').load('politicasContenedor/generalesGestion.jsp');
            break;
        }
        case 4:
        {
            $('#pill_menu4').attr('href', '#menu4');
            $('#menu1').load('politicasContenedor/generalesGestion.jsp');
        }
        case 5:
        {
            $('#pill_menu5').attr('href', '#menu5');
            $('#menu1').load('politicasContenedor/generalesGestion.jsp');
        }
        case 6:
        {
            $('#pill_menu6').attr('href', '#menu6');
            $('#menu1').load('politicasContenedor/generalesGestion.jsp');
        }
        default:
        {
            break;
        }
    }


}
