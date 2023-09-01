package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.RutesContent;
import com.bytelearn.bytelearn.repositories.RutesContentRepositorie;

@Service
public class RutesContentService extends ServicioBase<RutesContent>{

    public RutesContentService(RutesContentRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
