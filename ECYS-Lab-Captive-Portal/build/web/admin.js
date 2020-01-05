$(document).ready(function () {
    cambioPanel(1);
    if (sessionStorage.getItem('id_usuario') === null) {
        //location.replace('http://172.10.1.100:8080/ECYS-CP/log-cap');
    }
});


function avisoClick() {
    alert("inicio de las alertas");
}



function cambioPanel(valor) {

    //$('#bodyAdministrador').html('');
    $('#bodyAdministrador').empty();

    switch (valor) {
        case 7:
        {
            alert("Configuración de la cuenta");
            break;
        }
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
            $('#bodyAdministrador').load('cerrarSesionAdministrador.jsp');
            break;
        }
        case 7:{
                alert("Informacion del Usuario");
                break;  
        }
        default:
        {
            $('#bodyAdministrador').load('my-admin.jsp');
            break;
        }
    }


}
