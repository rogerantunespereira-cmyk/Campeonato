DROP DATABASE IF EXISTS campeonato;

CREATE DATABASE campeonato;
USE DATABASE campeonato;

CREATE TABLE jogadores(
    id_jogador INT FOREIGN KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    posicao VARCHAR(20),
    camisa INT NOT NULL,
    gols INT,
    assistencias INT
);

CREATE TABLE equipe(
    id_equipe INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    ano_fundacao INT,
    id_estadio INT FOREIGN KEY,
    id_jogador INT FOREIGN KEY,
    id_tecnico INT FOREIGN KEY,
    id_patrocinio INT FOREIGN KEY,
    patrocinios VARCHAR(100)
);

CREATE TABLE tecnicos(
    id_tecnico INT FOREIGN KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,

    
);

CREATE TABLE patrocinios(
    id_patrocinio	INT FOREIGN KEY AUTO_INCREMENT,
    nome_empresa	VARCHAR(100),	
    cnpj	VARCHAR(18),
    valor_patrocinio	DECIMAL(10,2),
    tipo_patrocinio	VARCHAR(50),
    telefone	VARCHAR(20),
    data_contrato	DATE
);