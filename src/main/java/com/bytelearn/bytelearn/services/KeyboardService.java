package com.bytelearn.bytelearn.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bytelearn.bytelearn.models.Keyboard;
import com.bytelearn.bytelearn.repositories.KeyboardRepositorie;

@Service
public class KeyboardService extends ServicioBase<Keyboard>{

    @Autowired KeyboardRepositorie keyboardRepositorie;

    public KeyboardService(KeyboardRepositorie repositorioBase) {
        super(repositorioBase);
    }

    public void saveAll(List<Keyboard> keyboards){
        keyboardRepositorie.saveAll(keyboards);
    }

    public Keyboard findByName(String name){
        Keyboard Keyboard = keyboardRepositorie.findByName(name);
        if(Keyboard != null){
            return Keyboard;
        }else{
            return null;
        }
    }
    
}
