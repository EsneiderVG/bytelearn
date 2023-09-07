package com.bytelearn.bytelearn.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

    @GetMapping("/{id}/edita")
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
            if (!validarDatosUnicos(email, usuario)) {
                if (!validarDatosUnicos(username, usuario)) {
                    redirectAttributes.addFlashAttribute("Username", "username ya en uso");
                }
                redirectAttributes.addFlashAttribute("correoErroneo", "correo ya en uso");
                return "redirect:/user/" + id + "/edit";
            }
            usuario.setFirstName(firstName);
            usuario.setLastName(lastName);
            usuario.setEmail(email);
            usuario.setUsername(username);
            usuarioService.save(usuario);
            return "redirect:/user/" + id;
        }
    }

    @GetMapping("/{id}/chancePassword")
    public String changePasswords(@PathVariable("id") Long id, @RequestParam(value = "password") String password,
            @RequestParam(value = "confirmPassword") String confirmPassword, Principal principal,
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
            if (!password.equals(confirmPassword)) {
                if (password.length() <= 8) {
                    redirectAttributes.addFlashAttribute("passwordSize",
                            "la contraseña debe contener minimo de 8 caracteres");
                }
                redirectAttributes.addFlashAttribute("confirmPassword", "las contraseñas no coinciden");
                return "redirect:/user/" + id + "/edit";
            }
            String encodedPassword = securityUserDetails.bCryptPasswordEncoder().encode(password);
            usuario.setPassword(encodedPassword);
            usuarioService.save(usuario);
            return "redirect:/logout";
        }
    }

    @GetMapping("/{id}/delete/{password}")
    public String deleteAccount(@PathVariable("id") Long id, Principal principal,
            @PathVariable("password") String password, RedirectAttributes redirectAttributes) {
        Usuario usuario = usuarioService.findById(id);
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        if (!validarSession(principal)) {
            System.out.println(principal);
            return "redirect:/login";
        } else {
            Usuario usuarioSesion = usuarioService.findByemail(principal.getName());
            if (!validarUsuario(usuario.getId(), usuarioSesion.getId())) {
                return "redirect:/cursos";
            }
            if (!encoder.matches(password, usuarioSesion.getPassword())) {
                redirectAttributes.addFlashAttribute("Password", "las contraseña no coincide");
                return "redirect:/user/" + id + "/edit";
            }
            usuarioService.deleteUser(usuarioSesion.getId());
            return "redirect:/logout";
        }
    }

    private boolean validarDatosUnicos(String valorUnico, Usuario usuario) {
        Usuario verificarDatos = usuarioService.findByemail(valorUnico);
        if (verificarDatos != null && verificarDatos != usuario) {
            return false;
        }
        verificarDatos = usuarioService.findByUsername(valorUnico);
        if (verificarDatos != null && verificarDatos != usuario) {
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
