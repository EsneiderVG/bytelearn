package com.bytelearn.bytelearn.controllers;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bytelearn.bytelearn.models.CursosDeUsuarios;
import com.bytelearn.bytelearn.models.RoadMap;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.services.CursosDeUsuariosService;
import com.bytelearn.bytelearn.services.RoadMapService;
import com.bytelearn.bytelearn.services.UsuarioService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/cursos")
public class CursosController {

    @Autowired
    UsuarioService usuarioService;
    @Autowired
    RoadMapService roadMapService;
    @Autowired
    CursosDeUsuariosService cursosDeUsuariosService;

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
        List<RoadMap> roadmaps = roadMapService.findAll();
        model.addAttribute("usuario", usuario);
        model.addAttribute("roadmaps", roadmaps);
        return "pages/cursos/cursomain.jsp";
    }

    @GetMapping("/join/{id}")
    public String join (Model model, @PathVariable("id") Long id,Principal principal){
        Usuario usuario = usuarioService.findByemail(principal.getName());
        RoadMap uRoadMap = roadMapService.findById(id);
        CursosDeUsuarios cursoDeUsuario = new CursosDeUsuarios();
        cursoDeUsuario.setUsuario(usuario);
        cursoDeUsuario.setCurso(uRoadMap);
        cursosDeUsuariosService.save(cursoDeUsuario); 
        return "redirect:/user/" + usuario.getId();
    }

}
