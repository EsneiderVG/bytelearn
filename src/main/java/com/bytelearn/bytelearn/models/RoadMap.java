package com.bytelearn.bytelearn.models;

import java.util.List;
import java.util.Set;

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
@Table(name = "road_maps")
@Getter
@Setter
@NoArgsConstructor
public class RoadMap extends ModeloBase {

    @NotNull
    @Size(min = 1, max = 200)
    private String name;

    @Size(min = 1)
    private String description;
    
    @Size(min = 1)
    private String portada;
    
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

    @OneToMany(mappedBy = "roadMap",fetch =  FetchType.LAZY)
    private Set<RutesOrder> rutesOrders;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "comentarios", 
        joinColumns = @JoinColumn(name = "comment_place"), 
        inverseJoinColumns = @JoinColumn(name = "user_thath_send")
    )
    private List<Usuario> comentarioPorUsuario;
    
}
