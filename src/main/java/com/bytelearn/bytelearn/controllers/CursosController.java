package com.bytelearn.bytelearn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/curso")
public class CursosController {

    @GetMapping("/view")
    String cursoView(){
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
