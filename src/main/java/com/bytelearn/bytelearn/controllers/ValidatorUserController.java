package com.bytelearn.bytelearn.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bytelearn.bytelearn.models.Usuario;

import jakarta.validation.Valid;

@RestController
public class ValidatorUserController {
    @RequestMapping("/registerValidation")
    public List<ObjectError> registerUser(@ModelAttribute("user") @Valid Usuario user, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("user", user);
            return bindingResult.getAllErrors(); // Retorna la vista del formulario de registro nuevamente
        } else {
            // userServicio.save(user);
            return new ArrayList<>(); // Redirige a una página de éxito o a donde desees
        }
    }
}
