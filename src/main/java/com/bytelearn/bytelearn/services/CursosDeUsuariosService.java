package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.CursosDeUsuarios;
import com.bytelearn.bytelearn.repositories.CursosDeUsuariosRepositorie;

@Service
public class CursosDeUsuariosService extends ServicioBase<CursosDeUsuarios>{

    public CursosDeUsuariosService(CursosDeUsuariosRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
