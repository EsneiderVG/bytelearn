package com.bytelearn.bytelearn.repositories;

import com.bytelearn.bytelearn.models.Keyboard;

public interface KeyboardRepositorie extends RepositorioBase<Keyboard>{
    
     Keyboard findByName(String name);

}
