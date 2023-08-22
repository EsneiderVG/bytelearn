package com.bytelearn.bytelearn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.services.UsuarioService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

    @Autowired 
    UsuarioService usuarioService;

    @GetMapping("/")
    String home(HttpSession session, Model model){
        Long id = (Long) session.getAttribute("sesion");
        if(id == null ){
            model.addAttribute("dato", id);
        }else{
            Usuario usuario = usuarioService.findById(id);
            model.addAttribute("datoU", usuario);
        }
        return "index.jsp";
    }

    @GetMapping("/logout")
    public String cierre(HttpSession session){
        session.removeAttribute("usuarioSingup"); 
        return "redirect:/";

    }
}
