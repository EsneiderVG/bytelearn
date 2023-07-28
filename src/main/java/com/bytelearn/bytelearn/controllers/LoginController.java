package com.bytelearn.bytelearn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping("/login")
    String loginHome(){
        return "pages/login/login.jsp";
    }
}
