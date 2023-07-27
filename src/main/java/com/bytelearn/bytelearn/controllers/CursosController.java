package com.bytelearn.bytelearn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CursosController {
    @GetMapping("/cursos/view")
    String cursoView(){
        return "pages/cursos/cursoview.jsp";
    }
}
