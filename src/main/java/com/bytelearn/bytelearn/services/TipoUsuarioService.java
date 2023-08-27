package com.bytelearn.bytelearn.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.TiposUsarios;
import com.bytelearn.bytelearn.repositories.TipoUsuarioRepositorie;

@Service
public class TipoUsuarioService extends ServicioBase<TiposUsarios>{

    @Autowired TipoUsuarioRepositorie tipoUsuarioRepositorie;

    public TipoUsuarioService(TipoUsuarioRepositorie repositorioBase) {
        super(repositorioBase);
    }

    public TiposUsarios findByNameContaining(String name){
        return tipoUsuarioRepositorie.findByNameContaining(name);
    }

    public void saveAll(List<TiposUsarios> TiposUsarios){
        tipoUsuarioRepositorie.saveAll(TiposUsarios);
    }
    
}
