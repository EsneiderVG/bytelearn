package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.Text;
import com.bytelearn.bytelearn.repositories.TextRepositorie;

@Service
public class TextService extends ServicioBase<Text>{

    public TextService(TextRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
