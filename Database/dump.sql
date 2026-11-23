DROP DATABASE IF EXISTS campeonato;

CREATE DATABASE campeonato;
USE DATABASE campeonato;

CREATE TABLE estadios (
    id_estadio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    capacidade INT
);

CREATE TABLE tecnicos (
    id_tecnico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    nacionalidade VARCHAR(50)
);

CREATE TABLE equipes (
    id_equipe INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    ano_fundacao INT,
    id_estadio INT,
    id_tecnico INT UNIQUE,
    FOREIGN KEY (id_estadio) REFERENCES estadios (id_estadio),
    FOREIGN KEY (id_tecnico) REFERENCES tecnicos (id_tecnico)
);

CREATE TABLE jogadores (
    id_jogador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    posicao VARCHAR(20),
    camisa INT NOT NULL,
    gols INT DEFAULT 0,
    assistencias INT DEFAULT 0,
    id_equipe INT,
    FOREIGN KEY (id_equipe) REFERENCES equipes (id_equipe)
);

CREATE TABLE patrocinios (
    id_patrocinio INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(100),
    cnpj VARCHAR(18) UNIQUE,
    valor_patrocinio DECIMAL(10,2),
    tipo_patrocinio VARCHAR(50),
    telefone VARCHAR(20),
    data_contrato DATE,
    id_equipe INT,
    FOREIGN KEY (id_equipe) REFERENCES equipes (id_equipe)
);
