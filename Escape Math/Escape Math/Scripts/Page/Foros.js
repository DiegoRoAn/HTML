﻿function ListarForos() {
    $.ajax({
        type: 'GET',
        dataType: 'json',
        url: '/Foro/GetListPost',
        data: {},
        contentType: "application/json; charset=utf-8",
        async: false,
        success: function (listado) {
            console.log(listado);
            var grid = $('#grid').grid({
                dataSource: listado,
                columns: [
                    { field: 'idPost', title: 'Identificador' ,width: 100 },
                    { field: 'Nombre_post', title: 'Nombre del post', sortable: true },
                    { field: 'Contenido_post', title: 'Contenido',sortable: true }
                ],
                pager: { limit: 5 }
            });
        },
        error: function (error) {
            alert('ERROR!!!!');
        }

    })
}
