package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.UsuariosExamenes;
import com.bytelearn.bytelearn.repositories.UsuariosExamenesRepositorie;

@Service
public class UsuariosExamenesService extends ServicioBase<UsuariosExamenes>{

    public UsuariosExamenesService(UsuariosExamenesRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
