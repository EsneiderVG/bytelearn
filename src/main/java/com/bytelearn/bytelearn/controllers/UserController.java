package com.bytelearn.bytelearn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bytelearn.bytelearn.models.TiposUsarios;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.security.DetallesSeguridadUsuarios;
import com.bytelearn.bytelearn.services.TipoUsuarioService;
import com.bytelearn.bytelearn.services.UsuarioService;
import com.bytelearn.bytelearn.validator.usuarioValidator;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    UsuarioService usuarioService;
    @Autowired
    usuarioValidator usuarioValidator;
    @Autowired
    TipoUsuarioService tipoUsuarioService;
    @Autowired
    DetallesSeguridadUsuarios securityUserDetails;

    @Value("${role_user}")
    private String USER_ROLE;

    @GetMapping("/new")
    public String registerHome(@ModelAttribute(value = "registroUsuario") Usuario usuarioSingup) {
        return "pages/login/login.jsp";
    }

    @PostMapping("/new")
    public String createUser(@Valid @ModelAttribute(value = "registroUsuario") Usuario usuarioSingup,
            BindingResult results, HttpSession session) {
        usuarioValidator.validate(usuarioSingup, results);
        if (results.hasErrors()) {
            return "pages/login/login.jsp";
        }

        TiposUsarios tipoDeUsuario = tipoUsuarioService.findByNameContaining(USER_ROLE);
        usuarioSingup.setUserType(tipoDeUsuario);

        String encodedPassword = securityUserDetails.bCryptPasswordEncoder().encode(usuarioSingup.getPassword());
        usuarioSingup.setPassword(encodedPassword);
        usuarioService.save(usuarioSingup);
        return "redirect:/";
    }

}
