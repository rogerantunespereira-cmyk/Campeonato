package com.example.campeonato.model;

import jakarta.persistence.*;

@Entity
@Table(name = "transmissoes")
public class Transmissao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_transmissao")
    private Integer id;

    @Column(name = "link_transmissao", length = 500)
    private String linkTransmissao;

    // Relação com Partida
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_partida", nullable = false)
    private Partida partida;

    // Relação com Emissora
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_emissora", nullable = false)
    private Emissora emissora;

    // Construtor sem Nada
    public Transmissao() {
    }

    // Os Getters
    public Integer getId() {
        return id;
    }

    public String getLinkTransmissao() {
        return linkTransmissao;
    }

    public Partida getPartida() {
        return partida;
    }

    public Emissora getEmissora() {
        return emissora;
    }

    // Os Setters
    public void setLinkTransmissao(String linkTransmissao) {
        this.linkTransmissao = linkTransmissao;
    }

    public void setPartida(Partida partida) {
        this.partida = partida;
    }

    public void setEmissora(Emissora emissora) {
        this.emissora = emissora;
    }
}
