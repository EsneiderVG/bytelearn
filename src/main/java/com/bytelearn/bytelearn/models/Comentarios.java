package com.bytelearn.bytelearn.models;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "comentarios")
@Getter
@Setter
@NoArgsConstructor
public class Comentarios extends ModeloBase {

    private String textContent;

    private String img_content;

    private String archive_content;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "comment_place")
    private Curso commentPlace;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_thath_send")
    private Usuario userThathSend;

}
