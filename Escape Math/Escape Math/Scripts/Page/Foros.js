function ListarForos() {
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
                    { field: 'Nombre_post', title: 'Nombre del post', width: 50 },
                    { field: 'Contenido_post', title: 'Contenido', sortable: true },
                    { field: 'fecha', title: 'Fecha de publicacion', sortable: true }
                ],
                pager: { limit: 5 }
            });
        },
        error: function (error) {
            alert('ERROR!!!!');
        }

    })
}
