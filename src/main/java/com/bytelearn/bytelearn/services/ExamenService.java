package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.Examen;
import com.bytelearn.bytelearn.repositories.ExamenRepositorie;

@Service
public class ExamenService extends ServicioBase<Examen>{

    public ExamenService(ExamenRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
