package com.bytelearn.bytelearn.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.services.UsuarioService;

@Component
public class usuarioValidator implements Validator {

    @Autowired UsuarioService usuarioService;

    @Override
    public boolean supports(Class<?> clazz) {
        return Usuario.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        Usuario usuario = (Usuario) target;
        validarContraseña(usuario, errors);
        validarCorreo(usuario,errors);
        ValidarUsername(usuario,errors);
    }

    private void ValidarUsername(Usuario usuario, Errors errors) {
        if(usuarioService.findByUsername(usuario.getUsername()) != null){
            errors.rejectValue("username", "usernameInvalido");
        }
    }

    private void validarCorreo(Usuario usuario, Errors errors) {
        if (usuario.getEmail().isEmpty()) {
            errors.rejectValue("email", "correoNulo");
        }
        if(usuarioService.findByemail(usuario.getEmail()) != null){
            errors.rejectValue("email", "correoInvalido");
        }
    }

    private void validarContraseña(Usuario usuario, Errors errors) {
        if (!usuario.getPassword().equals(usuario.getConfirmPassword())) {
            errors.rejectValue("confirmPassword", "passwordDiferente");
        }
    }

}
