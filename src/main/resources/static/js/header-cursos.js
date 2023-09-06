

function manejarCambioDeResolucion() {
  var ventanaAncho = window.innerWidth;
  var elementoAMover = document.getElementById("searcher");
  var contenedor2 = document.getElementById("insert-search-hid");
  var contenedorOrigin = document.getElementById("content-origin-searcher");

  if (ventanaAncho <= 570) {

    elementoAMover.parentNode.removeChild(elementoAMover);
    contenedor2.appendChild(elementoAMover);

    console.log("Pantalla pequeña");

  } else if (ventanaAncho <= 1024) {

    elementoAMover.parentNode.removeChild(elementoAMover)
    contenedorOrigin.appendChild(elementoAMover);
    // Ejecuta código para pantallas medianas (ancho entre 601px y 1024px)
    console.log("Pantalla mediana");
  } else {
    // Ejecuta código para pantallas grandes (ancho mayor a 1024px)
    console.log("Pantalla grande");
  }
}

// Llama a la función cuando se carga la página y cuando cambia el tamaño de la ventana
window.onload = manejarCambioDeResolucion;
window.addEventListener("resize", manejarCambioDeResolucion);
