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

    @Autowired UsuarioService usuarioService;

    @GetMapping("/")
    String home(Principal principal, Model model, HttpSession session){
        // Usuario usuario = usuarioService.findByemail(principal.getName());
        // if(usuario != null){
        //     model.addAttribute("usuario", usuario);
        // }else{
        //     return "redirect:/login";
        // }
        return "index.jsp";
    }
}
