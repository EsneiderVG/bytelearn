package com.bytelearn.bytelearn.controllers;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bytelearn.bytelearn.models.CursosDeUsuarios;
import com.bytelearn.bytelearn.models.RoadMap;
import com.bytelearn.bytelearn.models.RutesOrder;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.services.CursosDeUsuariosService;
import com.bytelearn.bytelearn.services.RoadMapService;
import com.bytelearn.bytelearn.services.RutesOrderService;
import com.bytelearn.bytelearn.services.UsuarioService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/roadmaps")
public class RoadMapController {

    @Autowired
    RoadMapService roadMapService;
    @Autowired
    UsuarioService usuarioService;
    @Autowired
    CursosDeUsuariosService cursosDeUsuariosService;
    @Autowired
    RutesOrderService rutesOrderService;

    @PostMapping("/new")
    public String newRoadmap(@RequestParam(value = "name") String name,
            @RequestParam(value = "description") String description,
            HttpSession session, Principal principal, RedirectAttributes redirectAttributes) {
        if (!validarSession(principal)) {
            return "redirect:/login";
        } else {
            Usuario usuarioSesion = usuarioService.findByemail(principal.getName());
            if (!validarRoadmapName(name)) {
                RoadMap roadMap = new RoadMap();
                roadMap.setName(name);
                roadMap.setDescription(description);
                roadMap.setCreatedFor(usuarioSesion);
                roadMapService.save(roadMap);
                CursosDeUsuarios cursoDeUsuario = new CursosDeUsuarios();
                cursoDeUsuario.setUsuario(usuarioSesion);
                cursoDeUsuario.setCurso(roadMap);
                cursosDeUsuariosService.save(cursoDeUsuario); 
                return "redirect:/roadmaps/"+roadMap.getId();
            }
            redirectAttributes.addFlashAttribute("roadmapName", "este nombre ya esta en uso");
            return "redirect:/cursos";
        }
    }

    @GetMapping("/{id}")
    public String show(Model model, @PathVariable("id") Long id,Principal principal) {
        Usuario usuario = usuarioService.findByemail(principal.getName());
        RoadMap roadMap = roadMapService.findById(id);
        List<RutesOrder> keyboards = rutesOrderService.findAll();
        List<CursosDeUsuarios> usuarios = cursosDeUsuariosService.findByUsuario(usuario);
        model.addAttribute("usuarioCurso", usuarios); 
        model.addAttribute("keyboards", keyboards);
        model.addAttribute("roadMap", roadMap);
        model.addAttribute("usuario", usuario);
        return "pages/cursos/roadmaps.jsp";
    }

    private boolean validarRoadmapName(String name) {
        RoadMap roadMap = roadMapService.findByName(name);
        if (roadMap == null) {
            return false;
        }
        return true;
    }

    private boolean validarSession(Principal principal) {
        if (principal == null) {
            return false;
        }
        return true;
    }

}
