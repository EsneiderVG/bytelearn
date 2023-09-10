package com.bytelearn.bytelearn.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bytelearn.bytelearn.models.TiposUsarios;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.security.DetallesSeguridadUsuarios;
import com.bytelearn.bytelearn.services.CursosDeUsuariosService;
import com.bytelearn.bytelearn.services.TipoUsuarioService;
import com.bytelearn.bytelearn.services.UsuarioService;
import com.bytelearn.bytelearn.validator.usuarioValidator;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@RestController
public class ValidatorUserController {

    @Autowired
    UsuarioService usuarioService;
    @Autowired
    usuarioValidator usuarioValidator;
    @Autowired
    TipoUsuarioService tipoUsuarioService;
    @Autowired
    DetallesSeguridadUsuarios securityUserDetails;
     @Autowired
    CursosDeUsuariosService cursosDeUsuariosService;

    @Value("${role_user}")
    private String USER_ROLE;

    @RequestMapping("/registerValidation")
    public List<ObjectError> registerUser(@Valid @ModelAttribute("registroUsuario") Usuario user, BindingResult bindingResult, Model model) {
        usuarioValidator.validate(user, bindingResult);
        if (bindingResult.hasErrors()) {
            model.addAttribute("user", user);
            return bindingResult.getAllErrors(); // Retorna la vista del formulario de registro nuevamente
        } else {
            // userServicio.save(user);
            return new ArrayList<>(); // Redirige a una página de éxito o a donde desees
        }
    }

    @RequestMapping("/new")
    public String createUser(@Valid @ModelAttribute(value = "registroUsuario") Usuario usuarioSingup,
            BindingResult results, HttpServletRequest request) throws ServletException {
        usuarioValidator.validate(usuarioSingup, results);
        if (results.hasErrors()) {
            return "pages/login/login.jsp";
        }

        TiposUsarios tipoDeUsuario = tipoUsuarioService.findByNameContaining(USER_ROLE);
        usuarioSingup.setUserType(tipoDeUsuario);

        String encodedPassword = securityUserDetails.bCryptPasswordEncoder().encode(usuarioSingup.getPassword());
        usuarioSingup.setPassword(encodedPassword);
        usuarioSingup.setImagenPerfil("/img/perfil.jpg");
        usuarioService.save(usuarioSingup);
        request.login(usuarioSingup.getEmail(), usuarioSingup.getConfirmPassword());
        return "/cursos";
    }
}
