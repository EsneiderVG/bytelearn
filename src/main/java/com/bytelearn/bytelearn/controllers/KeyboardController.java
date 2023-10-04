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

import com.bytelearn.bytelearn.models.Keyboard;
import com.bytelearn.bytelearn.models.RoadMap;
import com.bytelearn.bytelearn.models.RutesContent;
import com.bytelearn.bytelearn.models.RutesOrder;
import com.bytelearn.bytelearn.models.Text;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.services.KeyboardService;
import com.bytelearn.bytelearn.services.RoadMapService;
import com.bytelearn.bytelearn.services.RutesContentService;
import com.bytelearn.bytelearn.services.RutesOrderService;
import com.bytelearn.bytelearn.services.TextService;
import com.bytelearn.bytelearn.services.UsuarioService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/keyboards")
public class KeyboardController {

    @Autowired
    RutesOrderService rutesOrderService;
    @Autowired
    KeyboardService KeyboardService;
    @Autowired
    RoadMapService roadMapService;
    @Autowired
    UsuarioService usuarioService;
    @Autowired
    RutesContentService rutesContentService;
    @Autowired
    TextService textService;

    @PostMapping("/new")
    public String newRoadmap(@RequestParam(value = "name") String name,
            @RequestParam(value = "description") String description,
            @RequestParam(value = "roadMapID") Long roadMapId,
            HttpSession session, Principal principal, RedirectAttributes redirectAttributes) {
        if (!validarSession(principal)) {
            return "redirect:/login";
        } else {
            RutesOrder rutesOrder = new RutesOrder();
            Keyboard keyboard = KeyboardService.findByName(name);
            RoadMap roadMap = roadMapService.findById(roadMapId);
            rutesOrder.setKeyboard(keyboard);
            if (keyboard == null) {
                Keyboard newKeyboard = new Keyboard();
                newKeyboard.setName(name);
                KeyboardService.save(newKeyboard);
                rutesOrder.setKeyboard(newKeyboard);
            }
            rutesOrder.setDescription(description);
            rutesOrder.setRoadMap(roadMap);
            RutesContent ruteContent = new RutesContent();
            rutesContentService.save(ruteContent);
            rutesOrder.setRutesContent(ruteContent);
            rutesOrderService.save(rutesOrder);
            String url = rutesOrder.getKeyboard().getId() + "/" + roadMapId;
            return "redirect:/keyboards/" + url;
        }
    }

    @GetMapping("/{id}/{routeid}")
    public String show(Model model, @PathVariable("id") Long id, @PathVariable("routeid") Long routeid,
            Principal principal) {
        Usuario usuario = usuarioService.findByemail(principal.getName());
        Keyboard keyboard = KeyboardService.findById(id);
        RutesOrder ruteorder = rutesOrderService.findById(routeid);
        List<Text> textos = textService.findAll();
        model.addAttribute("textos", textos);
        model.addAttribute("routeorder", ruteorder);
        model.addAttribute("keyboard", keyboard);
        model.addAttribute("usuario", usuario);
        return "pages/cursos/roadmap.jsp";
    }

    private boolean validarSession(Principal principal) {
        if (principal == null) {
            return false;
        }
        return true;
    }

}
