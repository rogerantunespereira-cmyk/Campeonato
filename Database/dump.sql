DROP DATABASE IF EXISTS campeonato;

CREATE DATABASE campeonato;
USE DATABASE campeonato;

CREATE TABLE jogadores(
    id_jogador INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Posicao VARCHAR(20),
    Camisa INT
);