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
        keyboard.setDescription("contenedor de datos que almacena los valores durante la ejecución del programa");
        keyboards.add(keyboard);

        keyboard = new Keyboard();
        keyboard.setName("funciones");
        keyboard.setDescription("bloque de código que realiza alguna operación");
        keyboards.add(keyboard);

        keyboard = new Keyboard();
        keyboard.setName("condicion");
        keyboard.setDescription("estructura que permite elegir entre la ejecución de una acción u otra.");
        keyboards.add(keyboard);

        keyboard = new Keyboard();
        keyboard.setName("bucles");
        keyboard.setDescription("secuencias de instrucciones de código que se ejecuta repetidas veces.");
        keyboards.add(keyboard);

        keyboard = new Keyboard();
        keyboard.setName("sintaxis");
        keyboard.setDescription("conjunto de reglas que definen la manera de escribir instrucciones de código..");
        keyboards.add(keyboard);

        keyboardService.saveAll(keyboards);
    }

}
