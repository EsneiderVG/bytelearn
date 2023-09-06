package com.bytelearn.bytelearn.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bytelearn.bytelearn.models.TiposUsarios;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.security.DetallesSeguridadUsuarios;
import com.bytelearn.bytelearn.services.TipoUsuarioService;
import com.bytelearn.bytelearn.services.UsuarioService;
import com.bytelearn.bytelearn.validator.usuarioValidator;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UsuarioService usuarioService;
    @Autowired
    usuarioValidator usuarioValidator;
    @Autowired
    TipoUsuarioService tipoUsuarioService;
    @Autowired
    DetallesSeguridadUsuarios securityUserDetails;

    @Value("${role_user}")
    private String USER_ROLE;

    @GetMapping("/new")
    public String registerHome(@ModelAttribute(value = "registroUsuario") Usuario usuarioSingup) {
        return "pages/login/login.jsp";
    }

    @PostMapping("/new")
    public String createUser(@Valid @ModelAttribute(value = "registroUsuario") Usuario usuarioSingup,
            BindingResult results, HttpServletRequest request) throws ServletException {
        usuarioValidator.validate(usuarioSingup, results);
        if (results.hasErrors()) {
            return "pages/login/login.jsp";
        }

        TiposUsarios tipoDeUsuario = tipoUsuarioService.findByNameContaining(USER_ROLE);
        usuarioSingup.setUserType(tipoDeUsuario);

        String encodedPassword = securityUserDetails.bCryptPasswordEncoder().encode(usuarioSingup.getPassword());
        usuarioSingup.setPassword(encodedPassword);
        usuarioSingup.setImagenPerfil("/img/perfil.jpg");
        usuarioService.save(usuarioSingup);
        request.login(usuarioSingup.getEmail(), usuarioSingup.getConfirmPassword());
        return "redirect:/cursos";
    }

    @GetMapping("/{id}")
    public String perfil(Model model, @PathVariable("id") Long id) {
        Usuario usuario = usuarioService.findById(id);
        model.addAttribute("usuario", usuario);
        return "pages/perfilU/perfil_usuario.jsp";
    }

    @GetMapping("/{id}/edit")
    public String editar(Model model, @PathVariable("id") Long id, HttpSession session, Principal principal) {
        Usuario usuario = usuarioService.findById(id);
        if (!validarSession(principal)) {
            System.out.println(principal);
            return "redirect:/login";
        } else {
            Usuario usuarioSesion = usuarioService.findByemail(principal.getName());
            if (!validarUsuario(usuario.getId(), usuarioSesion.getId())) {
                return "redirect:/cursos";
            }
            model.addAttribute("usuario", usuario);
            return "pages/perfilU/EditarPerfil.jsp";
        }
    }

    @GetMapping("/contra")
    public String dato (){
        return "redirect:/cursos";
    }

    @PostMapping("/{id}/edita")
    public String saveChanges(@PathVariable("id") Long id, @RequestParam(value = "firstName") String firstName,
            @RequestParam(value = "lastName") String lastName, @RequestParam(value = "username") String username,
            @RequestParam(value = "email") String email, HttpSession session, Principal principal,
            RedirectAttributes redirectAttributes) {
        Usuario usuario = usuarioService.findById(id);
        if (!validarSession(principal)) {
            System.out.println(principal);
            return "redirect:/login";
        } else {
            Usuario usuarioSesion = usuarioService.findByemail(principal.getName());
            if (!validarUsuario(usuario.getId(), usuarioSesion.getId())) {
                return "redirect:/cursos";
            }
            if (!validarDatosUnicos(email)) {
                redirectAttributes.addFlashAttribute("correoErroneo", "correo ya en uso");
                return "redirect:/" + id + "/edit";
            }
            return "redirect:/" + id;
        }
    }

    private boolean validarDatosUnicos(String email) {
        Usuario verificarDatos = usuarioService.findByemail(email);
        if (verificarDatos == null) {
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

    private boolean validarUsuario(Long usuarioId, Long sessionId) {
        if (usuarioId != sessionId || sessionId == null) {
            return false;
        }
        return true;
    }
}
