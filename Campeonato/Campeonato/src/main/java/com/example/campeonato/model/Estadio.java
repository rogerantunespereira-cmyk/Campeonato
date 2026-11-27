package com.example.campeonato.model;

import jakarta.persistence.*;

@Entity
@Table(name = "estadios")
public class Estadio {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_estadio")
    private Integer id;

    @Column(name = "nome_estadio", nullable = false)
    private String nome;

    @Column(name = "cidade", nullable = false)
    private String cidade;

    @Column(name = "capacidade")
    private Integer capacidade;

    // Construtor sem Nada
    public Estadio() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getCidade() {
        return cidade;
    }

    public Integer getCapacidade() {
        return capacidade;
    }

    // Os Setters
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public void setCapacidade(Integer capacidade) {
        this.capacidade = capacidade;
    }
}
