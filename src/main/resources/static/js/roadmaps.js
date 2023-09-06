
document.addEventListener("DOMContentLoaded", function() {
  // Simula la carga del contenido durante 2 segundos (puedes cambiar este valor)
  setTimeout(function() {
      var loadingAnimation = document.querySelector(".loading-animation");
      var content = document.querySelector(".content");

      loadingAnimation.style.display = "none";
      content.style.display = "block";
  }, 2000); // Cambia el valor a la cantidad de tiempo que desees
});