package com.bytelearn.bytelearn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.bytelearn.bytelearn.models.Usuario;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String loginHome(@ModelAttribute(value = "registroUsuario") Usuario usuarioSingup) {
        return "pages/login/login.jsp";
    }

    @GetMapping("/logout")
    public String cierre(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }

}
