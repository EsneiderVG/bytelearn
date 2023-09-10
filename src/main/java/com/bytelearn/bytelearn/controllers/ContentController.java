package com.bytelearn.bytelearn.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bytelearn.bytelearn.models.RutesContent;
import com.bytelearn.bytelearn.models.Text;
import com.bytelearn.bytelearn.services.RutesContentService;
import com.bytelearn.bytelearn.services.TextService;

@Controller
@RequestMapping("/content")
public class ContentController {

    @Autowired
    RutesContentService rutesContentService;
    @Autowired 
    TextService textService;

    @PostMapping("/new")
    public String newContent(@RequestParam(value = "name") String titulo, @RequestParam(value = "id") Long id,
            @RequestParam(value = "description") String description, @RequestParam(value = "route") Long routeId,
            @RequestParam(value = "ejemplo") String ejemplo, Principal principal) {
                if (!validarSession(principal)) {
                    return "redirect:/login";
                } else {
                    System.out.println(routeId);
                    RutesContent ruteContent = rutesContentService.findById(routeId);
                    Text texto = new Text();
                    texto.setTitulo(titulo);
                    texto.setExample(ejemplo);
                    texto.setParrafo(description);
                    texto.setRutesContent(ruteContent);
                    textService.save(texto);
                    return "redirect:/keyboards/"+id+"/"+routeId;
                }
    }

    private boolean validarSession(Principal principal) {
        if (principal == null) {
            return false;
        }
        return true;
    }

}
