package com.bytelearn.bytelearn.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.services.UsuarioService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/curso")
public class CursosController {

    @Autowired
    UsuarioService usuarioService;

    @GetMapping("/view")
    String cursoView(@RequestParam(value = "type", defaultValue = "0") int typeSection, Model model) {
        model.addAttribute("typeSection", typeSection);
        return "pages/cursos/cursoview.jsp";
    }

    @GetMapping("/certificate")
    String cursoCertificate() {
        return "pages/cursos/certificado/certificado.jsp";
    }

    @GetMapping("")
    String cursosMain(Principal principal, Model model, HttpSession session) {
        Usuario usuario = usuarioService.findByemail(principal.getName());
        model.addAttribute("usuario", usuario);
        return "pages/cursos/cursomain.jsp";
    }

    @GetMapping("/roadmap")
    String roadMapPage() {
        return "pages/cursos/roadmap.jsp";
    }

    @GetMapping("/roadmaps")
    String roadMapsPage(){
        return "pages/cursos/roadmaps.jsp";
    }

}
