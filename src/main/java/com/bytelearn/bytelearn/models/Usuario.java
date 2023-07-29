package com.bytelearn.bytelearn.models;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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

}
