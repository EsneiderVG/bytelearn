package com.bytelearn.bytelearn.services;

import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.Question;
import com.bytelearn.bytelearn.repositories.QuestionRepositorie;

@Service
public class QuestionService extends ServicioBase<Question> {

    public QuestionService(QuestionRepositorie repositorioBase) {
        super(repositorioBase);
    }
    
}
