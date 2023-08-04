package com.bytelearn.bytelearn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bytelearn.bytelearn.models.Usuario;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/login")
public class LoginController {
    @GetMapping("/singIn")
    String loginHome(){
        return "pages/login/login.jsp";
    }

    @GetMapping("/singUp")
    String registerHome(@ModelAttribute(value = "usuario") Usuario usuario){
        return "pages/login/login.jsp";
    }

    @PostMapping("/singUp/new")
    String createUser(@Valid @ModelAttribute(value = "usuario") Usuario usuario, BindingResult results){
        if(results.hasErrors()){
            return "pages/login/login.jsp";
        }else{
            return "redirect:/";
        }
    }
}
