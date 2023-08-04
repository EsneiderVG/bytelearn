package com.bytelearn.bytelearn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.services.UsuarioService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UsuarioService usuarioService;

    @GetMapping("/singIn")
    public String loginHome(@ModelAttribute(value = "usuario") Usuario usuario) {
        return "pages/login/login.jsp";
    }

    @PostMapping("/singIn/enter")
    public String login(Model model,@RequestParam(value = "usuario") String correo,
            @RequestParam(value = "password") String password) {
                System.out.println(correo);
        Usuario user = usuarioService.findByEmail(correo, password);
        model.addAttribute("usuario", user);
        return "pages/login/login.jsp";
    }

    @GetMapping("/singUp")
    public String registerHome(@ModelAttribute(value = "usuario") Usuario usuario) {
        return "pages/login/login.jsp";
    }

    @PostMapping("/singUp/new")
    public String createUser(@Valid @ModelAttribute(value = "usuario") Usuario usuario, BindingResult results) {
        if (results.hasErrors()) {
            System.out.println("este es un error");
            System.out.println(results);
            return "pages/login/login.jsp";
        } else if (revisarRegistro(usuario) != null) {
            String tipoError = revisarRegistro(usuario);
            String objectName = "";
            String field = "";
            String message = "";
            switch (tipoError) {
                case "contraseña":
                    objectName = "confirmPassword";
                    field = "confirmPassword";
                    message = "las contraseñas no coinciden";
                    break;
                case "correo":
                    objectName = "email";
                    field = "email";
                    message = "este correo ya esta en uso por favor usa otro";
                    break;
                default:
                    break;
            }
            FieldError error = new FieldError(objectName, field, message);
            results.addError(error);
            return "pages/login/login.jsp";
        } else {
            usuarioService.save(usuario);
            return "redirect:/";
        }
    }

    private String revisarRegistro(@Valid Usuario usuario) {
        if (!usuario.getPassword().equals(usuario.getConfirmPassword())) {
            return "contraseña";
        } else if (usuario.getEmail() != null) {
            return "correo";
        } else {
            return null;
        }
    }

}
