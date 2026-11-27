package com.example.campeonato.model;

import jakarta.persistence.*;

@Entity
@Table(name = "emissoras")
public class Emissora {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_emissora")
    private Integer id;

    @Column(name = "nome", nullable = false)
    private String nome;

    @Column(name = "tipo_transmissao", nullable = false)
    private String tipoTransmissao;

    // Construtor sem Nada
    public Emissora() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getTipoTransmissao() {
        return tipoTransmissao;
    }

    // Os Setters
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setTipoTransmissao(String tipoTransmissao) {
        this.tipoTransmissao = tipoTransmissao;
    }
}
