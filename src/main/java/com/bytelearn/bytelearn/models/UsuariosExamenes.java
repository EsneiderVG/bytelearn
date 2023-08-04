package com.bytelearn.bytelearn.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "usuarios_toman_examenes" )
@Getter
@Setter
@NoArgsConstructor
public class UsuariosExamenes{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Max(5)
    @Min(1)
    private Double nota;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date takeAt;

    @PreUpdate
    protected void onUpdate() {
        this.takeAt = new Date();
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="examen_id")
    private Examenes examen;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="usuario_id")
    private Usuario usuario;

}
