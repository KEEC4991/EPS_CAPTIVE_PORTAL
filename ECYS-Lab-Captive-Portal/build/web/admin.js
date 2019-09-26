$(document).ready(function () {

    cambioPanel(1);


});


function avisoClick() {
    alert("inicio de las alertas");

    //Carga del panel de adminsitrador al panel principal


}



function cambioPanel(valor) {

    $('#bodyAdministrador').html('');
    

    switch (valor) {
        case 2:
        {
            $('#bodyAdministrador').load('reportesAdministracion.html');

            break;
        }
        case 6:
        {
            $('#bodyAdministrador').load('panelAdministracion.jsp');
            break;
        }
        case 3:
        {
            $('#bodyAdministrador').load('gestionUsuariosAdmin.jsp');
            break;
        }
        case 4:
        {
            $('#bodyAdministrador').load('politicasAdministracion.html');
            break;
        }
        case 5:
        {
            $('#bodyAdministrador').load('cerrarSesionAdministracion.html');
            break;
        }
        default:
        {
            $('#bodyAdministrador').load('my-admin.jsp');
            break;
        }
    }


}
