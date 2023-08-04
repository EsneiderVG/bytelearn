package com.bytelearn.bytelearn.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.TiposUsarios;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.repositories.UsuarioRepositorie;

@Service
public class UsuarioService extends ServicioBase<Usuario> {

    @Autowired
    TipoUsuarioService tipoUsuarioService;

    @Autowired UsuarioRepositorie repositorie;

    public UsuarioService(UsuarioRepositorie repositorioBase) {
        super(repositorioBase);
    }

    public Usuario findByEmail(String email, String password) {
        Usuario usuario = repositorie.findByEmail(email);
        if (usuario != null) {
            boolean passwordValido = auntenticar(usuario, password);
            if (!passwordValido) {
                return null;
            }
        }
        return usuario;
    }

    private boolean auntenticar(Usuario usuario, String password) {
        return BCrypt.checkpw(password, usuario.getPassword());
    }

    @Override
    public Usuario save(Usuario usuario) {
        TiposUsarios userType = tipoUsuarioService.findById(1L);
        usuario.setUserType(userType);
        encriptarPassword(usuario);
        return super.save(usuario);
    }

    private void encriptarPassword(Usuario usuario) {
        String passwordEncriptado = BCrypt.hashpw(usuario.getPassword(), BCrypt.gensalt());
        usuario.setPassword(passwordEncriptado);
    }

}
