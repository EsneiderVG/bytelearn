package com.bytelearn.bytelearn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/curso")
public class CursosController {

    @GetMapping("/view")
    String cursoView(@RequestParam(value = "type", defaultValue = "0") int typeSection, Model model){
        model.addAttribute("typeSection", typeSection);
        return "pages/cursos/cursoview.jsp";
    }

    @GetMapping("/certificate")
    String cursoCertificate(){
        return "pages/cursos/certificado/certificado.jsp";
    }

    @GetMapping("")
    String cursosMain(){
        return "pages/cursos/cursomain.jsp";
    }
    
}
