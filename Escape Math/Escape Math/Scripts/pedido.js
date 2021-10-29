const carro = new Carrito();
const carrito = document.getElementById('carrito');
const productos = document.getElementById('lista-productos');
const listaProductos = document.querySelector('#lista-carrito tbody');
const vaciarCarritoBTN = document.getElementById('vaciar-carrito');

cargarEventos();

function cargarEventos() {
    productos.addEventListener('click', (e) => { carro.comprarProducto(e) });
    vaciarCarritoBTN.addEventListener('click', (e) => { carro.vaciarCarrito(e) });
}

