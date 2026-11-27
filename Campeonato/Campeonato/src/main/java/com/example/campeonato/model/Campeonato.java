package com.example.campeonato.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "campeonato")
public class Campeonato {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_campeonato")
    private Integer id;

    @Column(name = "nome", nullable = false)
    private String nome;

    @Column(name = "ano", nullable = false)
    private Integer ano;

    @Column(name = "formato", nullable = false)
    private String formato = "PONTOS_CORRIDOS";

    @Column(name = "status", nullable = false)
    private String status = "NAO_INICIADO";

    @Column(name = "data_inicio")
    private LocalDate dataInicio;

    @Column(name = "data_fim")
    private LocalDate dataFim;

    // Construtor sem Nada
    public Campeonato() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public Integer getAno() {
        return ano;
    }

    public String getFormato() {
        return formato;
    }

    public String getStatus() {
        return status;
    }

    public LocalDate getDataInicio() {
        return dataInicio;
    }

    public LocalDate getDataFim() {
        return dataFim;
    }

    // Os Setters
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setAno(Integer ano) {
        this.ano = ano;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setDataInicio(LocalDate dataInicio) {
        this.dataInicio = dataInicio;
    }

    public void setDataFim(LocalDate dataFim) {
        this.dataFim = dataFim;
    }
}
