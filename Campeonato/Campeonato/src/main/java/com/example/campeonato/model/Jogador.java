package com.example.campeonato.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "jogadores")
public class Jogador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_jogador")
    private Integer id;

    @Column(name = "nome", nullable = false)
    private String nome;

    @Column(name = "data_nascimento")
    private LocalDate dataNascimento;

    @Column(name = "posicao")
    private String posicao;

    @Column(name = "numero_camisa")
    private Integer numeroCamisa;

    // Relação com Time
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_time", nullable = false)
    private Time time;

    // Construtor sem Nada
    public Jogador() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public LocalDate getDataNascimento() {
        return dataNascimento;
    }

    public String getPosicao() {
        return posicao;
    }

    public Integer getNumeroCamisa() {
        return numeroCamisa;
    }

    public Time getTime() {
        return time;
    }

    // Os Setters
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setDataNascimento(LocalDate dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public void setPosicao(String posicao) {
        this.posicao = posicao;
    }

    public void setNumeroCamisa(Integer numeroCamisa) {
        this.numeroCamisa = numeroCamisa;
    }

    public void setTime(Time time) {
        this.time = time;
    }
}
