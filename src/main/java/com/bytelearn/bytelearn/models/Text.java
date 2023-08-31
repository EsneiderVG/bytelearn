package com.bytelearn.bytelearn.models;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table (name="texts")
@Getter
@Setter
@NoArgsConstructor
public class Text extends ModeloBase {

    @Size(min = 1)
    private String parrafo;

    @Size(min = 1)
    private String example;

    @ManyToOne (fetch = FetchType.LAZY)
    @JoinColumn (name = "rutes_content_id")
    private RutesContent rutesContent;
    
}
