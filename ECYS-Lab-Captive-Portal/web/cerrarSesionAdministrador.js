$(document).ready(function () {
    $('#exampleModal').modal('toggle');
});


function cerrar_sesion() {
    sessionStorage.clear();
    window.location.href = 'http://127.0.0.1:8080/ECYS-CP/login.jsp';
}
