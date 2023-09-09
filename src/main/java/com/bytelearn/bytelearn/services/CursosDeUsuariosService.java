package com.bytelearn.bytelearn.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.CursosDeUsuarios;
import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.repositories.CursosDeUsuariosRepositorie;

@Service
public class CursosDeUsuariosService extends ServicioBase<CursosDeUsuarios> {

    @Autowired
    CursosDeUsuariosRepositorie repositorie;

    public CursosDeUsuariosService(CursosDeUsuariosRepositorie repositorioBase) {
        super(repositorioBase);
    }

    public List<CursosDeUsuarios> findByUsuario(Usuario usuario) {
        List<CursosDeUsuarios> usuarios = repositorie.findByUsuario(usuario);
        if (usuarios != null) {
            return usuarios;
        } else {
            return null;
        }
    }
}
