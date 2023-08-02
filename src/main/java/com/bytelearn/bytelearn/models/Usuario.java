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
@Table(name = "usuarios")
@Getter
@Setter
@NoArgsConstructor
public class Usuario extends ModeloBase{
    
    @NotNull
    @Size(min = 1, max = 200)
    private String firstName;

    @NotNull
    @Size(min = 1, max = 200)
    private String lastName;

    @NotNull
    @Size(min = 1, max = 200)
    private String username;

    @NotNull
    @Size(min = 1, max = 200)
    private String email;

    @NotNull
    @Size(min = 1, max = 255)
    private String password;
    
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_type")
    private TiposUsarios userType;

    @NotNull
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "cursos_de_los_usuarios", 
        joinColumns = @JoinColumn(name = "usuario_id"), 
        inverseJoinColumns = @JoinColumn(name = "curso_id")
    )
    private List<Curso> cursos;

    @NotNull
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "usuarios_toman_examenes", 
        joinColumns = @JoinColumn(name = "usuario_id"), 
        inverseJoinColumns = @JoinColumn(name = "examen_id")
    )
    private List<Examenes> examenes;

    @NotNull
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "comentarios", 
        joinColumns = @JoinColumn(name = "user_thath_send"), 
        inverseJoinColumns = @JoinColumn(name = "comment_place")
    )
    private List<Curso> comentariosDeLosUsuarios;

    @NotNull
    @OneToMany(mappedBy = "createdFor",fetch =  FetchType.LAZY)
    private List<Curso> cursosCreados;

}
