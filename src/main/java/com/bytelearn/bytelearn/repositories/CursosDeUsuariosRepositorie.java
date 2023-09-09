package com.bytelearn.bytelearn.repositories;

import java.util.List;

import com.bytelearn.bytelearn.models.CursosDeUsuarios;
import com.bytelearn.bytelearn.models.Usuario;

public interface CursosDeUsuariosRepositorie extends RepositorioBase<CursosDeUsuarios>{
    
     List<CursosDeUsuarios> findByUsuario(Usuario usuario);

}
