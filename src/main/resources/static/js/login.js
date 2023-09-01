var urlActual = window.location.href;
var flipedContainer = document.querySelector('.container .cover');

var spanFlipContent = document.querySelector('.cover .text');
var flipInput = document.getElementById("flip");

window.addEventListener("load", function() {
    
    console.log(urlActual);
    if(urlActual.includes("/login")){
        // alert("estamos en login");
        flipInput.checked = false;
    }else if(urlActual.includes("/user/new")){
        // alert("estamos en signup");

        flipInput.checked = true;
    }
});

flipInput.addEventListener("change", function() {
    if (this.checked) {
        // alert("checked");
        flipedContainer.style.transform = "rotateY(-180deg)";
        spanFlipContent.style.transform = "rotateY(0deg)";
    } else {
        // alert("no cheked");
      // Restaurar la propiedad transform de CSS cuando el input no está marcado
        flipedContainer.style.transform = "rotateY(0deg)";
        spanFlipContent.style.transform = "rotateY(0deg)";
    }
});
