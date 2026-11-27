package com.example.campeonato.model;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "patrocinios")
public class Patrocinio {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_patrocinio")
    private Integer id;

    @Column(name = "valor_contrato",
            precision = 12, scale = 2, nullable = false)
    private BigDecimal valorContrato;

    @Column(name = "data_inicio", nullable = false)
    private LocalDate dataInicio;

    @Column(name = "data_fim")
    private LocalDate dataFim;

    // Relação com Time
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_time", nullable = false)
    private Time time;

    // Relação com Patrocinador
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_patrocinador", nullable = false)
    private Patrocinador patrocinador;

    // Construtor sem Nada
    public Patrocinio() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public BigDecimal getValorContrato() {
        return valorContrato;
    }

    public LocalDate getDataInicio() {
        return dataInicio;
    }

    public LocalDate getDataFim() {
        return dataFim;
    }

    public Time getTime() {
        return time;
    }

    public Patrocinador getPatrocinador() {
        return patrocinador;
    }

    // Os Setters
    public void setValorContrato(BigDecimal valorContrato) {
        this.valorContrato = valorContrato;
    }

    public void setDataInicio(LocalDate dataInicio) {
        this.dataInicio = dataInicio;
    }

    public void setDataFim(LocalDate dataFim) {
        this.dataFim = dataFim;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public void setPatrocinador(Patrocinador patrocinador) {
        this.patrocinador = patrocinador;
    }
}
