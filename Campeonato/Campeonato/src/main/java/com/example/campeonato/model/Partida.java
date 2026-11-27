package com.example.campeonato.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "partidas")
public class Partida {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_partida")
    private Integer id;

    @Column(name = "rodada", nullable = false)
    private Integer rodada;

    @Column(name = "data_hora", nullable = false)
    private LocalDateTime dataHora;

    @Column(name = "gols_mandante")
    private Integer golsMandante;

    @Column(name = "gols_visitante")
    private Integer golsVisitante;

    @Column(name = "status", nullable = false)
    private String status = "AGENDADA";

    // Relação com Campeonato
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_campeonato", nullable = false)
    private Campeonato campeonato;

    // Relação com Time mandante
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_time_mandante", nullable = false)
    private Time timeMandante;

    // Relação com Time visitante
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_time_visitante", nullable = false)
    private Time timeVisitante;

    // Relação com Estadio
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_estadio", nullable = false)
    private Estadio estadio;

    // Construtor sem Nada
    public Partida() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public Integer getRodada() {
        return rodada;
    }

    public LocalDateTime getDataHora() {
        return dataHora;
    }

    public Integer getGolsMandante() {
        return golsMandante;
    }

    public Integer getGolsVisitante() {
        return golsVisitante;
    }

    public String getStatus() {
        return status;
    }

    public Campeonato getCampeonato() {
        return campeonato;
    }

    public Time getTimeMandante() {
        return timeMandante;
    }

    public Time getTimeVisitante() {
        return timeVisitante;
    }

    public Estadio getEstadio() {
        return estadio;
    }

    // Os Setters
    public void setRodada(Integer rodada) {
        this.rodada = rodada;
    }

    public void setDataHora(LocalDateTime dataHora) {
        this.dataHora = dataHora;
    }

    public void setGolsMandante(Integer golsMandante) {
        this.golsMandante = golsMandante;
    }

    public void setGolsVisitante(Integer golsVisitante) {
        this.golsVisitante = golsVisitante;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setCampeonato(Campeonato campeonato) {
        this.campeonato = campeonato;
    }

    public void setTimeMandante(Time timeMandante) {
        this.timeMandante = timeMandante;
    }

    public void setTimeVisitante(Time timeVisitante) {
        this.timeVisitante = timeVisitante;
    }

    public void setEstadio(Estadio estadio) {
        this.estadio = estadio;
    }
}
