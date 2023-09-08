package com.bytelearn.bytelearn.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bytelearn.bytelearn.services.UsuarioService;

import com.bytelearn.bytelearn.models.Usuario;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

    @Autowired
    UsuarioService usuarioService;

    @GetMapping("/")
    String home(Principal principal, Model model, HttpSession session) {
        if (principal == null) {
            model.addAttribute("usuario", null);
            return "index.jsp";
        }else{
            Usuario usuario = usuarioService.findByemail(principal.getName());
            model.addAttribute("usuario", usuario);
            return "redirect:/cursos";
        }
    }

    @GetMapping("/about")
    String aboutPage(Principal principal, Model model, HttpSession session){
        if (principal == null) {
            model.addAttribute("usuario", null);
        }else{
            Usuario usuario = usuarioService.findByemail(principal.getName());
            model.addAttribute("usuario", usuario);
        }
        return "home/AboutGedo.jsp";
    }

    @GetMapping("/index")
     String index(Principal principal, Model model, HttpSession session) {
        if (principal == null) {
            model.addAttribute("usuario", null);
        }else{
            Usuario usuario = usuarioService.findByemail(principal.getName());
            model.addAttribute("usuario", usuario);
        }
        return "index.jsp";
    }

}
