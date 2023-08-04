package com.bytelearn.bytelearn.models;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "cursos")
@Getter
@Setter
@NoArgsConstructor
public class Curso extends ModeloBase {

    @NotNull
    @Size(min = 1, max = 200)
    private String nombre;

    private String portada;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "created_for")
    private Usuario createdFor;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "cursos_de_los_usuarios", 
        joinColumns = @JoinColumn(name = "curso_id"), 
        inverseJoinColumns = @JoinColumn(name = "usuario_id")
    )
    private List<Usuario> usuarios;

    @OneToMany(mappedBy = "curso",fetch =  FetchType.LAZY)
    private List<Examenes> examenes;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "comentarios", 
        joinColumns = @JoinColumn(name = "comment_place"), 
        inverseJoinColumns = @JoinColumn(name = "user_thath_send")
    )
    private List<Usuario> comentarioPorUsuario;
    
}
