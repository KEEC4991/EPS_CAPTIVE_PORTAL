$(document).ready(function () {
    var tabla = $('#tabla_usuarios_administrativos').DataTable({
        columns: [{
                title: "NOMBRE"
            },
            {
                title: "ESTADO"
            },
            {
                title: "FECHA CREACION"
            },
            {
                title: "ULT. CONEXIÓN"
            },
            {
                title: "ACCIONES"
            }
        ],
        dom: 'Bfrtip',
        select: true,
    })

    /*
     var table = $('#tablaUsuarios').DataTable({
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
     */
});