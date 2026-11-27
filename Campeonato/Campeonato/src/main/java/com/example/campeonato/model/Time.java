package com.example.campeonato.model;

import jakarta.persistence.*;

@Entity
@Table(name = "times")
public class Time {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_time")
    private Integer id;

    @Column(name = "nome_time", nullable = false)
    private String nome;

    @Column(name = "sigla")
    private String sigla;

    @Column(name = "cidade")
    private String cidade;

    // Relação com Campeonato
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_campeonato", nullable = false)
    private Campeonato campeonato;

    // Relação com Tecnico
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_tecnico", nullable = false, unique = true)
    private Tecnico tecnico;

    // Construtor sem Nada
    public Time() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getSigla() {
        return sigla;
    }

    public String getCidade() {
        return cidade;
    }

    public Campeonato getCampeonato() {
        return campeonato;
    }

    public Tecnico getTecnico() {
        return tecnico;
    }

    // Os Setters
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public void setCampeonato(Campeonato campeonato) {
        this.campeonato = campeonato;
    }

    public void setTecnico(Tecnico tecnico) {
        this.tecnico = tecnico;
    }
}