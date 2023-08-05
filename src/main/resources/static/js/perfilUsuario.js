const realFileBtn = document.getElementById("input-file-perfil");
const customBtn = document.getElementById("button-change-perfil");
const customTxt = document.getElementById("custom-text");

customBtn.addEventListener("click", function() {
  realFileBtn.click();
});

realFileBtn.addEventListener("change", function() {
  if (realFileBtn.value) {
    customTxt.innerHTML = realFileBtn.value.match(
      /[\/\\]([\w\d\s\.\-\(\)]+)$/
    )[1];
  } else {
    customTxt.innerHTML = "No file chosen, yet.";
  }
});

// const realFileBtn2 = document.getElementById("inputFile-fondo");
// const customBtn2 = document.getElementById("button-change-fondo-perfil");
// const customTxt2 = document.getElementById("output-file-fondo");

// customBtn2.addEventListener("click", function() {
//   realFileBtn2.click();
// });

// realFileBtn2.addEventListener("change", function() {
//   if (realFileBtn2.value) {
//     customTxt2.innerHTML = realFileBtn2.value.match(
//       /[\/\\]([\w\d\s\.\-\(\)]+)$/
//     )[1];
//   } else {
//     customTxt2.innerHTML = "No file chosen, yet.";
//   }
// });


// panel de ayuda

var btnAbrirAyuda = document.getElementById('btn-abrir-ayuda'),
btnCerrarAyuda = document.getElementById('btn-cerrar-popup'),
containerAyuda = document.getElementById('cont-ayuda');

btnAbrirAyuda.addEventListener('click', function(){
	containerAyuda.classList.add('visible');
});

btnCerrarAyuda.addEventListener('click', function(e){
	e.preventDefault();
	containerAyuda.classList.remove('visible');
});
