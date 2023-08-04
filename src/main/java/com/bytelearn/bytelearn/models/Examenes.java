package com.bytelearn.bytelearn.models;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "examenes" )
@Getter
@Setter
@NoArgsConstructor
public class Examenes extends ModeloBase {
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "curso_id")
    private Curso curso;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "usuarios_toman_examenes", 
        joinColumns = @JoinColumn(name = "examen_id"), 
        inverseJoinColumns = @JoinColumn(name = "usuario_id")
    )
    private List<Usuario> usuarios;

}
