package com.bytelearn.bytelearn.repositories;

import com.bytelearn.bytelearn.models.Usuario;

public interface UsuarioRepositorie extends RepositorioBase<Usuario>{
 
    Usuario findByEmail(String email);  
 
    Usuario findByUsername(String email);  

}
