package com.bytelearn.bytelearn.seed;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import com.bytelearn.bytelearn.models.TiposUsarios;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.security.DetallesSeguridadUsuarios;
import com.bytelearn.bytelearn.services.TipoUsuarioService;
import com.bytelearn.bytelearn.services.UsuarioService;

@Component
public class seed implements ApplicationRunner {

    @Value("${role_user}")
    private String USER;
    @Value("${role_admin}")
    private String ADMIN;

    private String prefix = "ROLE_";

    @Autowired
    TipoUsuarioService tipoUsuarioService;
    @Autowired
    UsuarioService usuarioService;
    @Autowired
    DetallesSeguridadUsuarios securityUserDetails;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        List<TiposUsarios> tiposDeUsarios = tipoUsuarioService.findAll();
        if (tiposDeUsarios.isEmpty()) {
            createTipoDeUsuarios();
        }

        List<Usuario> usuarios = usuarioService.findAll();
        if (usuarios.isEmpty()) {
            createAdmin();
        }
    }

    private void createAdmin() {
        Usuario usuario = new Usuario();
        usuario.setEmail("miguelangelcf52@gmail.com");
        usuario.setFirstName("Miguel");
        usuario.setLastName("Castro");
        usuario.setUsername("Miguel");

        TiposUsarios tipoUsuario = tipoUsuarioService.findByNameContaining(ADMIN);
        usuario.setUserType(tipoUsuario);

        String encodedPassword = securityUserDetails.bCryptPasswordEncoder().encode("123456789");
        usuario.setPassword(encodedPassword);
        usuarioService.save(usuario);
    }

    private void createTipoDeUsuarios() {
        List<TiposUsarios> tiposUsarios = new ArrayList<>();
        TiposUsarios tipoDeUsuario = new TiposUsarios();
        tipoDeUsuario.setName(prefix + USER);
        tiposUsarios.add(tipoDeUsuario);

        tipoDeUsuario = new TiposUsarios();
        tipoDeUsuario.setName(prefix + ADMIN);
        tiposUsarios.add(tipoDeUsuario);

        tipoUsuarioService.saveAll(tiposUsarios);
    }

}
