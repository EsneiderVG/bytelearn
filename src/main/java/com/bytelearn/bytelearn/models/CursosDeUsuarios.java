package com.bytelearn.bytelearn.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "cursos_de_los_usuarios" )
@Getter
@Setter
@NoArgsConstructor
public class CursosDeUsuarios{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="usuario_id")
    private Usuario usuario;
    
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="curso_id")
    private Curso curso;

    @NotNull
    @Max(200)
    private int progreso;

    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fechaInicio;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ultimoAcceso;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fechaFinal;

    @PrePersist
    protected void onCreate() {
        this.fechaInicio = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.ultimoAcceso = new Date();
    }

    public void finish() {
        this.fechaFinal = new Date();
    }
    
}
