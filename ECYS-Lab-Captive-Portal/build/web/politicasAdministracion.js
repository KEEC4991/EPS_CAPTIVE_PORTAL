/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    cargaMenu(1);
});


function cargaMenu(accion) {

    console.log(accion);

    switch (accion) {
        case 1:
        {
            //$('#pill_menu1').attr('href', '#menu1');
            $('#menu_general_politicas').load('politicasContenedor/administracionUsuarios.jsp');
            break;
        }
        case 2:
        {
            //$('#pill_menu2').attr('href', '#menu2');
            $('#menu_general_politicas').load('politicasContenedor/generalesGestion.jsp');
            break;
        }
        case 3:
        {
            //$('#pill_menu3').attr('href', '#menu3');
            $('#menu_general_politicas').load('politicasContenedor/generalesGestion.jsp');
            break;
        }
        case 4:
        {
            //$('#pill_menu4').attr('href', '#menu4');
            $('#menu_general_politicas').load('politicasContenedor/generalesGestion.jsp');
        }
        case 5:
        {
            //$('#pill_menu5').attr('href', '#menu5');
            $('#menu_general_politicas').load('politicasContenedor/generalesGestion.jsp');
        }
        case 6:
        {
            //$('#pill_menu6').attr('href', '#menu6');
            $('#menu_general_politicas').load('politicasContenedor/generalesGestion.jsp');
        }
        default:
        {
            break;
        }
    }


}
