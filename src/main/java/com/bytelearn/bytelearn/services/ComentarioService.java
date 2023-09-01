package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.Comentario;
import com.bytelearn.bytelearn.repositories.ComentarioRepositorie;

@Service
public class ComentarioService extends ServicioBase<Comentario> {

    public ComentarioService(ComentarioRepositorie repositorioBase) {
        super(repositorioBase);
    }

}
