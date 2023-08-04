package com.bytelearn.bytelearn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cursos")
public class CursosController {

    @GetMapping("/curso/view")
    String cursoView(){
        return "pages/cursos/cursoview.jsp";
    }

    @GetMapping("/curso/certificate")
    String cursoCertificate(){
        return "pages/cursos/certificado/certificado.jsp";
    }
    
}
