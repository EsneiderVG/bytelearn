package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.TiposUsarios;
import com.bytelearn.bytelearn.repositories.TipoUsuarioRepositorie;

@Service
public class TipoUsuarioService extends ServicioBase<TiposUsarios>{

    public TipoUsuarioService(TipoUsuarioRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
