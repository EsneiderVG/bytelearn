package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.Usuario;
import com.bytelearn.bytelearn.repositories.UsuarioRepositorie;

@Service
public class UsuarioService extends ServicioBase<Usuario>{

    public UsuarioService(UsuarioRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
