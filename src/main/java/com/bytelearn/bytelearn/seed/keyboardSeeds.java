package com.bytelearn.bytelearn.seed;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import com.bytelearn.bytelearn.models.Keyboard;
import com.bytelearn.bytelearn.services.KeyboardService;

@Component
public class keyboardSeeds implements ApplicationRunner {

    @Autowired
    KeyboardService keyboardService;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        List<Keyboard> keyboards = keyboardService.findAll();
        if(keyboards.isEmpty()){
            createKeayboards();
        }
    }

    private void createKeayboards() {
        List<Keyboard> keyboards = new ArrayList<>();
        Keyboard keyboard = new Keyboard();
        keyboard.setName("variables");
        keyboard.setDescription("es un contenedor de datos que almacena los valores durante la ejecución del programa");
        keyboards.add(keyboard);

        keyboardService.saveAll(keyboards);
    }

}
