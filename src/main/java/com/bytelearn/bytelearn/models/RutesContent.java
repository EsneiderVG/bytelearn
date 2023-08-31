package com.bytelearn.bytelearn.models;

import java.util.List;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table (name = "rutes_contents")
@Getter
@Setter
@NoArgsConstructor
public class RutesContent extends ModeloBase {

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="examen_id")
    private Examen examen;

    @OneToMany(mappedBy = "rutesContent", fetch = FetchType.LAZY)
    private Set<RutesOrder> rutesOrders;

    @OneToMany(mappedBy = "rutesContent", fetch = FetchType.LAZY)
    private List<Text> textos;
    
}
