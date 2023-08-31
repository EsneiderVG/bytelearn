package com.bytelearn.bytelearn.models;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "examenes" )
@Getter
@Setter
@NoArgsConstructor
public class Examen extends ModeloBase {
    
    @OneToMany(mappedBy = "examen", fetch = FetchType.LAZY)
    private List<RutesContent> rutesContents;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "usuarios_toman_examenes", 
        joinColumns = @JoinColumn(name = "examen_id"), 
        inverseJoinColumns = @JoinColumn(name = "usuario_id")
    )
    private List<Usuario> usuarios;

    @OneToMany(mappedBy = "examen", fetch = FetchType.LAZY)
    private List<Question> questions;

}
