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
                    { field: 'Nombre_post', title: 'Nombre del post', width: 150 },
                    { field: 'Contenido_post', title: 'Contenido', sortable: true }
                ],
                pager: { limit: 5 }
            });
        },
        error: function (error) {
            alert('ERROR!!!!');
        }

    })
}


function InsertarForo() {
    var nombrejs = $("#txtNombre").val();
    var contenidojs = $("#txtContenido").val();

    if (nombrejs !== "" && contenidojs !== "") {
        var model = JSON.stringify({
            Nombre_post: nombrejs, Contenido_post: contenidojs
        });

        $.ajax({
            type: 'POST',
            dataType: 'json',
            url: '/Foro/PostInsertarPostt',
            data: model,
            contentType: 'application/json; charset=utf-8',
            success: function (data) {
                if (data.Codigo == 1) {
                    var nombrejs = $("#txtNombre").val("");
                    var contenidojs = $("#txtContenido").val("");
                    alert(data.resultado);
                }
                else {
                    alert(data.resultado);
                }
            },
            error: function (error) {
                alert('ERROR!!!!');
            }
        })

    }

}
