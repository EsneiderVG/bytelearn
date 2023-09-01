package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.OptionQuestion;
import com.bytelearn.bytelearn.repositories.OptionQuestionRepositorie;

@Service
public class OptionQuestionService extends ServicioBase <OptionQuestion>{

    public OptionQuestionService(OptionQuestionRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
