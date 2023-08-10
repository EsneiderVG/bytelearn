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

    @Override
    public Usuario save(Usuario usuario) {
        TiposUsarios userType = tipoUsuarioService.findById(1L);
        usuario.setUserType(userType);
        encriptarPassword(usuario);
        return super.save(usuario);
    }

    public Usuario findByemail(String email){
        Usuario user = repositorie.findByEmail(email);
        if(user != null){
            return user;
        }else{
            return null;
        }
    }

    private void encriptarPassword(Usuario usuario) {
        String passwordEncriptado = BCrypt.hashpw(usuario.getPassword(), BCrypt.gensalt());
        usuario.setPassword(passwordEncriptado);
    }

    public Usuario validarDatosLogin(String email, String password) {
        Usuario usuario = validarCorreo(email);
        if(usuario != null){
            if(auntenticarContraseña(usuario, password)){
                return usuario;
            }
            Usuario NoContraseña = new Usuario();
            return NoContraseña;
        }
        return null;
    }

    public Usuario validarCorreo(String email) {
        Usuario usuarioTemporal = repositorie.findByEmail(email);
        if (usuarioTemporal != null) {
            return usuarioTemporal;
        }
        return null;
    }

    private boolean auntenticarContraseña(Usuario usuario, String password) {
        return BCrypt.checkpw(password, usuario.getPassword());
    }

}
