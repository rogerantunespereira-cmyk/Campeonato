package com.example.campeonato.model;

import jakarta.persistence.*;

@Entity
@Table(name = "patrocinadores")
public class Patrocinador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_patrocinador")
    private Integer id;

    @Column(name = "nome", nullable = false)
    private String nome;

    @Column(name = "segmento")
    private String segmento;

    // Construtor sem Nada
    public Patrocinador() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getSegmento() {
        return segmento;
    }

    // Os Setters
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setSegmento(String segmento) {
        this.segmento = segmento;
    }
}
