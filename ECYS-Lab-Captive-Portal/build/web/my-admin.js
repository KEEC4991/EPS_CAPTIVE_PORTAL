
$(document).ready(function (){
   
});

function cambioPanel(valor) {

    $('#bodyAdministrador').html('');
    

    switch (valor) {
        case 2:
        {
            $('#bodyAdministrador').load('reportesAdministracion.jsp');

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
            $('#bodyAdministrador').load('politicasAdministracion.jsp');
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
