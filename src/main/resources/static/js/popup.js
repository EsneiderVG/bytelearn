
// popup individual solo proposito

var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
	overlay = document.getElementById('overlay'),
	popup = document.getElementById('popup'),
	btnCerrarPopup = document.getElementById('btn-cerrar-popup');

btnAbrirPopup.addEventListener('click', function(){
	overlay.classList.add('active');
	popup.classList.add('active');
});

btnCerrarPopup.addEventListener('click', function(e){
	e.preventDefault();
	overlay.classList.remove('active');
	popup.classList.remove('active');
});

// animationPopups(this.dataset.modalToggle)
// control del modal
// function animationPopups(dataModal){
// 	var modal = document.getElementById(dataModal);
	
// 	setTimeout(function() {
// 		modal.classList.remove("animation-up");
// 	}, 1500);
// }
