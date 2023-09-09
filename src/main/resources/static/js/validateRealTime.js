var correoInvalido = "este correo ya esta en uso por favor usa otro";
var usernameInvalido = "este username ya esta en uso por favor usa otro";
var passwordDiferente = "las contraseñas no coinciden";

function createNombreCampos(elementsInput){
    const nombresDeCampos = [];

    elementsInput.forEach((input) => {
        const nombreCampo = input.getAttribute("name");
        if (nombreCampo) {
        if (nombreCampo !== "_csrf") {
            nombresDeCampos.push(nombreCampo);
        }
        }
    });

    return nombresDeCampos;
}

function createMensajesUnicos (data){
    const mensajesUnicos = {};
    data.forEach((dataOn) => {
        const { field, defaultMessage, code } = dataOn;
        if (!mensajesUnicos[field]) {
            if(code == "correoInvalido"){
                mensajesUnicos[field] = correoInvalido;
            }else if(code == "usernameInvalido"){
                mensajesUnicos[field] = usernameInvalido;
            }else if(code == "passwordDiferente"){
                mensajesUnicos[field] = passwordDiferente;
            }else{
                mensajesUnicos[field] = defaultMessage;
            }
        }
    });
    return mensajesUnicos;
}

function impressErrorValues(nombresDeCampos, mensajesUnicos){
    for (let campof = 0; campof < nombresDeCampos.length; campof++) {
        var contentError = document.getElementById(
            nombresDeCampos[campof] + "Error"
        );
        contentError.innerHTML = "";
        if(mensajesUnicos.length == 0){
            contentError.innerHTML = "";
        }else{
            contentError.textContent = mensajesUnicos[nombresDeCampos[campof]];
        }
    }
}

function resetValues(nombresDeCampos){
    for (let campof = 0; campof < nombresDeCampos.length; campof++) {
        var contentError = document.getElementById(
            nombresDeCampos[campof] + "Error"
        );
        contentError.innerHTML = "";
    }
}

// se adapto para no mas el register
    const form = document.getElementById("registerUser");
    form.addEventListener("submit", (event) => {
    event.preventDefault();
    const formData = new FormData(form);
    fetch("/registerValidation", {
        method: "POST",
        body: formData,
    })
        .then((response) => {
        return response.json();
        })

        .then((data) => {
        // console.log(data);
        const elementosInput = form.querySelectorAll("input");
        const nombresDeCampos = createNombreCampos(elementosInput);
        // success point
        if (data.length == 0) {
            resetValues(nombresDeCampos);
            fetch('/new', {
                method: 'POST',
                body: formData
            })
            .then(function(response) {
                if (response.ok) {
                // console.log(response);
                return response.text(); // Si la respuesta es exitosa, obtenemos el contenido de texto
                } else {
                throw new Error('Error en la solicitud POST');
                }
            })
            .then((data) => {
                // document.body.innerHTML = data;
                // console.log(data);
                window.location.href = data;
                return false;

            })
            .catch(function(error) {
                console.error('Error:', error);
            });
            // error point
        } else {
            // console.log(data);
            const mensajesUnicos = createMensajesUnicos(data);
            impressErrorValues(nombresDeCampos, mensajesUnicos);
        }
        });
    });

