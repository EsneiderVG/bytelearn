package com.bytelearn.bytelearn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.services.UsuarioService;
import com.bytelearn.bytelearn.validator.usuarioValidator;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UsuarioService usuarioService;
    @Autowired
    usuarioValidator usuarioValidator;

    @GetMapping("/singIn")
    public String loginHome(@ModelAttribute(value = "registroUsuario") Usuario usuarioSingup) {
        return "pages/login/login.jsp";
    }

    @PostMapping("/singIn")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password,
            HttpSession session, RedirectAttributes redirectAttributes) {
        Usuario usuario = usuarioService.validarDatosLogin(email, password);
        if (usuario == null) {
            redirectAttributes.addFlashAttribute("correoErroneo", "usuario erroneo");
            return "redirect:/login/singIn";
        }
        if (usuario.getEmail() == null) {
            redirectAttributes.addFlashAttribute("contraseñaNula", "contraseña erronea");
            return "redirect:/login/singIn";
        } else {
            session.setAttribute("sesion", usuario.getId());
        }
        return "redirect:/";
    }

    @GetMapping("/singUp")
    public String registerHome(@ModelAttribute(value = "registroUsuario") Usuario usuarioSingup) {
        return "pages/login/login.jsp";
    }

    @PostMapping("/singUp")
    public String createUser(@Valid @ModelAttribute(value = "registroUsuario") Usuario usuarioSingup,
            BindingResult results, HttpSession session) {
        usuarioValidator.validate(usuarioSingup, results);
        if (results.hasErrors()) {
            return "pages/login/login.jsp";
        } else {
            usuarioService.save(usuarioSingup);
            session.setAttribute("sesion", usuarioSingup.getId());
            return "redirect:/";
        }
    }
}
