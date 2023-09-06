package com.bytelearn.bytelearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public void deleteUser(Long id){
        repositorie.deleteById(id);
    }

    public Usuario findByemail(String email){
        Usuario user = repositorie.findByEmail(email);
        if(user != null){
            return user;
        }else{
            return null;
        }
    }

    public Usuario findByUsername(String email){
        Usuario user = repositorie.findByUsername(email);
        if(user != null){
            return user;
        }else{
            return null;
        }
    }

}
