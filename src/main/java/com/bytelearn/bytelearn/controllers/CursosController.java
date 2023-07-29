package com.bytelearn.bytelearn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CursosController {

    @GetMapping("/cursos/curso/view")
    String cursoView(){
        return "pages/cursos/cursoview.jsp";
    }

    @GetMapping("/cursos/curso/certificate")
    String cursoCertificate(){
        return "pages/cursos/certificado/certificado.jsp";
    }
    
}
