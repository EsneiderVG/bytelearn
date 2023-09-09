package com.bytelearn.bytelearn.models;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "rutes_orden")
@Getter
@Setter
@NoArgsConstructor
public class RutesOrder{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 1)
    private String description;

    private int position;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="roadmap_id")
    private RoadMap roadMap;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="rutes_content_id")
    private RutesContent rutesContent;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="keyboard_id")
    private Keyboard keyboard;

}
