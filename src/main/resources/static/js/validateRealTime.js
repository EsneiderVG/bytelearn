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
        const { field, defaultMessage } = dataOn;
        if (!mensajesUnicos[field]) {
            mensajesUnicos[field] = defaultMessage;
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

function realTimeValidation(nameId){
    const form = document.getElementById(nameId);
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
        const elementosInput = form.querySelectorAll("input");
        const nombresDeCampos = createNombreCampos(elementosInput);
        // success point
        if (data.length == 0) {
            resetValues(nombresDeCampos);
            
            // error point
        } else {
            // console.log(data);
            const mensajesUnicos = createMensajesUnicos(data);
            impressErrorValues(nombresDeCampos, mensajesUnicos);
        }
        });
    });
}
