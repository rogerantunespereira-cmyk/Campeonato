DROP DATABASE IF EXISTS campeonato;
CREATE DATABASE campeonato;
USE campeonato;

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

-- ---------------------------------------------------------------------
-- 1) ESTADIOS
-- ---------------------------------------------------------------------
INSERT INTO estadios (id_estadio, nome, cidade, capacidade) VALUES
(1,  'Movistar Arena',                    'Madri',           17453),
(2,  'Palau Blaugrana',                   'Barcelona',        7585),
(3,  'Manchester Futsal Arena',           'Manchester',       1500),  -- fictícia
(4,  'Liverpool Futsal Hall',             'Liverpool',        1200),  -- fictícia
(5,  'Copper Box Arena',                  'Londres',          7500),
(6,  'Futsal-Halle München',              'Munique',          2000),  -- fictícia
(7,  'Stade Pierre de Coubertin',         'Paris',            4000),
(8,  'Allianz Cloud',                     'Milão',            5400),
(9,  'PalaRuffini',                       'Turim',            5000),
(10, 'Ginásio do Ibirapuera',             'São Paulo',       11000),
(11, 'Ginásio Wlamir Marques',            'São Paulo',        3000),
(12, 'Ginásio do Maracanãzinho',          'Rio de Janeiro',  11800),
(13, 'Fort Lauderdale Futsal Center',     'Fort Lauderdale',  1500),  -- fictícia
(14, 'PalaBarbuto',                       'Nápoles',          2500),
(15, 'Wrexham Futsal Arena',              'Wrexham',          1000),  -- fictícia
(16, 'Gelsenkirchen Futsal-Halle',        'Gelsenkirchen',    1500),  -- fictícia
(17, 'Max-Schmeling-Halle',               'Berlim',           9000),
(18, 'Morningside Arena',                 'Leicester',        2000),
(19, 'Southampton Futsal Centre',         'Southampton',      1000),  -- fictícia
(20, 'Ponds Forge',                       'Sheffield',        3000);

-- ---------------------------------------------------------------------
-- 2) TECNICOS
-- ---------------------------------------------------------------------
INSERT INTO tecnicos (id_tecnico, nome, data_nascimento, nacionalidade) VALUES
(1,  'Álvaro Arbeloa',       '1983-01-17', 'Espanha'),
(2,  'Hansi Flick',          '1965-02-24', 'Alemanha'),
(3,  'Pep Guardiola',        '1971-01-18', 'Espanha'),
(4,  'Arne Slot',            '1978-09-17', 'Países Baixos'),
(5,  'Mikel Arteta',         '1982-03-26', 'Espanha'),
(6,  'Vincent Kompany',      '1986-04-10', 'Bélgica'),
(7,  'Luis Enrique',         '1970-05-08', 'Espanha'),
(8,  'Cristian Chivu',       '1980-10-26', 'Romênia'),
(9,  'Luciano Spalletti',    '1959-03-07', 'Itália'),
(10, 'Ramón Díaz',           '1959-08-29', 'Argentina'),
(11, 'Abel Ferreira',        '1978-12-22', 'Portugal'),
(12, 'Filipe Luís',          '1985-08-09', 'Brasil'),
(13, 'Javier Mascherano',    '1984-06-08', 'Argentina'),
(14, 'Antonio Conte',        '1969-07-31', 'Itália'),
(15, 'Phil Parkinson',       '1967-12-01', 'Inglaterra'),
(16, 'Miron Muslic',         '1982-09-14', 'Áustria'),
(17, 'Stefan Leitl',         '1977-08-29', 'Alemanha'),
(18, 'Marti Cifuentes',      '1982-07-07', 'Espanha'),
(19, 'Tonda Eckert',         '1993-01-31', 'Alemanha'),
(20, 'Chris Wilder',         '1967-09-23', 'Inglaterra');

-- ---------------------------------------------------------------------
-- 3) EQUIPES
-- 1ª divisão: ids 1 a 14 | 2ª divisão: ids 15 a 20
-- ---------------------------------------------------------------------
INSERT INTO equipes (id_equipe, nome, ano_fundacao, id_estadio, id_tecnico) VALUES
(1,  'Real Madrid',            1902, 1,  1),
(2,  'Barcelona',              1899, 2,  2),
(3,  'Manchester City',        1880, 3,  3),
(4,  'Liverpool',              1892, 4,  4),
(5,  'Arsenal',                1886, 5,  5),
(6,  'Bayern de Munique',      1900, 6,  6),
(7,  'Paris Saint-Germain',    1970, 7,  7),
(8,  'Inter de Milão',         1908, 8,  8),
(9,  'Juventus',               1897, 9,  9),
(10, 'Corinthians',            1910, 10, 10),
(11, 'Palmeiras',              1914, 11, 11),
(12, 'Flamengo',               1895, 12, 12),
(13, 'Inter Miami',            2018, 13, 13),
(14, 'Napoli',                 1926, 14, 14),
(15, 'Wrexham',                1864, 15, 15),
(16, 'Schalke 04',             1904, 16, 16),
(17, 'Hertha Berlim',          1892, 17, 17),
(18, 'Leicester City',         1884, 18, 18),
(19, 'Southampton',            1885, 19, 19),
(20, 'Sheffield United',       1889, 20, 20);

-- ---------------------------------------------------------------------
-- 4) JOGADORES (5 por equipe = 100 jogadores)
-- ---------------------------------------------------------------------
INSERT INTO jogadores (nome, posicao, camisa, gols, assistencias, id_equipe) VALUES

('Thibaut Courtois',     'Goleiro',   1,  0,  0, 1),
('Antonio Rüdiger',      'Zagueiro', 22,  3,  1, 1),
('Jude Bellingham',      'Meia',      5, 12,  9, 1),
('Vinícius Júnior',      'Atacante',  7, 17, 11, 1),
('Kylian Mbappé',        'Atacante', 10, 30,  7, 1),

('Joan García',          'Goleiro',  13,  0,  0, 2),
('Pau Cubarsí',          'Zagueiro',  5,  2,  2, 2),
('Pedri',                'Meia',      8,  7, 12, 2),
('Lamine Yamal',         'Atacante', 10, 16, 15, 2),
('Robert Lewandowski',   'Atacante',  9, 24,  6, 2),

('Gianluigi Donnarumma', 'Goleiro',  25,  0,  0, 3),
('Rúben Dias',           'Zagueiro',  3,  2,  1, 3),
('Rodri',                'Volante',  16,  5,  6, 3),
('Phil Foden',           'Meia',     47, 10,  9, 3),
('Erling Haaland',       'Atacante',  9, 28,  5, 3),

('Alisson',              'Goleiro',   1,  0,  0, 4),
('Virgil van Dijk',      'Zagueiro',  4,  4,  2, 4),
('Florian Wirtz',        'Meia',      7,  8, 10, 4),
('Mohamed Salah',        'Atacante', 11, 22, 13, 4),
('Alexander Isak',       'Atacante',  9, 15,  4, 4),

('David Raya',           'Goleiro',  22,  0,  0, 5),
('William Saliba',       'Zagueiro',  2,  3,  1, 5),
('Declan Rice',          'Volante',  41,  6,  9, 5),
('Bukayo Saka',          'Atacante',  7, 13, 12, 5),
('Viktor Gyökeres',      'Atacante', 14, 19,  5, 5),

('Manuel Neuer',         'Goleiro',   1,  0,  0, 6),
('Dayot Upamecano',      'Zagueiro',  2,  2,  1, 6),
('Joshua Kimmich',       'Volante',   6,  4, 10, 6),
('Michael Olise',        'Atacante', 17, 13, 14, 6),
('Harry Kane',           'Atacante',  9, 31,  9, 6),

('Matvey Safonov',       'Goleiro',  39,  0,  0, 7),
('Marquinhos',           'Zagueiro',  5,  3,  1, 7),
('Achraf Hakimi',        'Lateral',   2,  6,  9, 7),
('Vitinha',              'Meia',     17,  7,  8, 7),
('Ousmane Dembélé',      'Atacante', 10, 20, 11, 7),

('Yann Sommer',          'Goleiro',   1,  0,  0, 8),
('Alessandro Bastoni',   'Zagueiro', 95,  3,  5, 8),
('Nicolò Barella',       'Meia',     23,  6,  8, 8),
('Marcus Thuram',        'Atacante',  9, 12,  7, 8),
('Lautaro Martínez',     'Atacante', 10, 23,  6, 8),

('Michele Di Gregorio',  'Goleiro',  29,  0,  0, 9),
('Gleison Bremer',       'Zagueiro',  3,  2,  0, 9),
('Manuel Locatelli',     'Volante',   5,  2,  4, 9),
('Kenan Yıldız',         'Atacante', 10, 11,  8, 9),
('Dušan Vlahović',       'Atacante',  9, 16,  3, 9),

('Hugo Souza',           'Goleiro',   1,  0,  0, 10),
('Gustavo Henrique',     'Zagueiro',  3,  2,  0, 10),
('Rodrigo Garro',        'Meia',      8,  6,  9, 10),
('Memphis Depay',        'Atacante', 10, 12,  8, 10),
('Yuri Alberto',         'Atacante',  9, 15,  4, 10),

('Weverton',             'Goleiro',  21,  0,  0, 11),
('Gustavo Gómez',        'Zagueiro', 15,  4,  1, 11),
('Raphael Veiga',        'Meia',     23,  9,  8, 11),
('Vitor Roque',          'Atacante',  9, 14,  4, 11),
('Flaco López',          'Atacante', 42, 11,  3, 11),

('Agustín Rossi',        'Goleiro',   1,  0,  0, 12),
('Léo Pereira',          'Zagueiro',  4,  3,  1, 12),
('Gerson',               'Meia',      8,  5,  7, 12),
('Giorgian de Arrascaeta','Meia',    10, 11, 13, 12),
('Pedro',                'Atacante',  9, 20,  4, 12),

('Oscar Ustari',         'Goleiro',   1,  0,  0, 13),
('Jordi Alba',           'Lateral',  18,  4, 10, 13),
('Sergio Busquets',      'Volante',   5,  1,  4, 13),
('Luis Suárez',          'Atacante',  9, 18,  9, 13),
('Lionel Messi',         'Atacante', 10, 29, 19, 13),

('Alex Meret',           'Goleiro',   1,  0,  0, 14),
('Alessandro Buongiorno','Zagueiro',  4,  2,  1, 14),
('Scott McTominay',      'Meia',      8,  9,  4, 14),
('Kevin De Bruyne',      'Meia',     11,  6, 12, 14),
('Rasmus Højlund',       'Atacante', 19, 10,  3, 14),

('Ben Foster',           'Goleiro',   1,  0,  0, 15),
('Liberato Cacace',      'Lateral',   3,  2,  6, 15),
('Andy Cannon',          'Meia',      8,  4,  8, 15),
('Josh Windass',         'Atacante', 11,  9,  6, 15),
('Paul Mullin',          'Atacante', 10, 16,  7, 15),

('Loris Karius',         'Goleiro',   1,  0,  0, 16),
('Timo Becker',          'Zagueiro',  4,  2,  1, 16),
('Mertcan Ayhan',        'Volante',   6,  1,  3, 16),
('Kenan Karaman',        'Atacante', 19,  8,  5, 16),
('Moussa Sylla',         'Atacante',  9, 13,  3, 16),

('Tjark Ernst',          'Goleiro',   1,  0,  0, 17),
('Marton Dardai',        'Zagueiro',  5,  2,  1, 17),
('Michał Karbownik',     'Lateral',   3,  1,  5, 17),
('Fabian Reese',         'Meia',     14,  8, 11, 17),
('Kevin Sessa',          'Atacante',  9, 10,  3, 17),

('Mads Hermansen',       'Goleiro',  30,  0,  0, 18),
('Wout Faes',            'Zagueiro',  3,  2,  0, 18),
('Harry Winks',          'Meia',      8,  3,  6, 18),
('Stephy Mavididi',      'Atacante', 10,  9,  6, 18),
('Patson Daka',          'Atacante', 29, 11,  2, 18),

('Aaron Ramsdale',       'Goleiro',   1,  0,  0, 19),
('Jack Stephens',        'Zagueiro',  5,  2,  1, 19),
('Flynn Downes',         'Volante',   4,  1,  4, 19),
('Joe Aribo',            'Meia',      7,  6,  5, 19),
('Adam Armstrong',       'Atacante',  9, 12,  3, 19),

('Michael Cooper',       'Goleiro',   1,  0,  0, 20),
('Jack Robinson',        'Zagueiro', 19,  2,  1, 20),
('Vinícius Souza',       'Volante',   6,  2,  4, 20),
('Callum O''Hare',       'Meia',     10,  7,  8, 20),
('Tyrese Campbell',      'Atacante',  9, 11,  3, 20);

INSERT INTO patrocinios
    (nome_empresa, cnpj, valor_patrocinio, tipo_patrocinio, telefone, data_contrato, id_equipe)
VALUES
('Iberia Skyline Telecom',     '10.000.001/0001-01', 85000000.00, 'Master',             '+34 91 555-0101', '2024-07-01', 1),
('Solaris Energia Ibérica',    '10.000.002/0001-02', 32000000.00, 'Material esportivo', '+34 91 555-0102', '2025-01-15', 1),

('Catalunya Pay',              '10.000.003/0001-03', 70000000.00, 'Master',             '+34 93 555-0103', '2024-07-01', 2),
('Mediterrâneo Sports Wear',   '10.000.004/0001-04', 28000000.00, 'Material esportivo', '+34 93 555-0104', '2023-08-10', 2),

('Northern Rail Logística',    '10.000.005/0001-05', 78000000.00, 'Master',             '+44 161 555-0105','2024-06-20', 3),
('Mancunian Bank',             '10.000.006/0001-06', 25000000.00, 'Manga',              '+44 161 555-0106','2025-02-01', 3),

('Mersey Foods',               '10.000.007/0001-07', 60000000.00, 'Master',             '+44 151 555-0107','2024-07-05', 4),
('Albion Airways',             '10.000.008/0001-08', 22000000.00, 'Manga',              '+44 151 555-0108','2023-09-12', 4),

('Thames Fly',                 '10.000.009/0001-09', 65000000.00, 'Master',             '+44 20 5550-0109','2024-06-30', 5),
('Capital Hub Fintech',        '10.000.010/0001-10', 18000000.00, 'Apoio',              '+44 20 5550-0110','2025-03-18', 5),

('Bavaria Motoren',            '10.000.011/0001-11', 55000000.00, 'Master',             '+49 89 555-0111', '2024-07-01', 6),
('AlpenTech Solutions',        '10.000.012/0001-12', 20000000.00, 'Manga',              '+49 89 555-0112', '2023-10-22', 6),

('Lumière Luxe',               '10.000.013/0001-13', 72000000.00, 'Master',             '+33 1 55 50 01 13','2024-07-01', 7),
('Seine Mobilité',             '10.000.014/0001-14', 19000000.00, 'Costas',             '+33 1 55 50 01 14','2025-01-20', 7),

('Navigli Assicurazioni',      '10.000.015/0001-15', 40000000.00, 'Master',             '+39 02 5550-0115','2024-08-01', 8),
('Lombardia Pneus',            '10.000.016/0001-16', 15000000.00, 'Manga',              '+39 02 5550-0116','2023-09-05', 8),

('Piemonte Auto Group',        '10.000.017/0001-17', 45000000.00, 'Master',             '+39 011 555-0117','2024-07-15', 9),
('Torino Caffè',               '10.000.018/0001-18',  9000000.00, 'Apoio',              '+39 011 555-0118','2025-02-10', 9),

('Fiel Bank',                  '10.000.019/0001-19', 42000000.00, 'Master',             '+55 11 5550-0119','2024-01-10', 10),
('Tatuapé Telecom',            '10.000.020/0001-20', 12000000.00, 'Manga',              '+55 11 5550-0120','2025-03-01', 10),

('Verde Crédito',              '10.000.021/0001-21', 38000000.00, 'Master',             '+55 11 5550-0121','2024-01-15', 11),
('Palestra Energia',           '10.000.022/0001-22', 10000000.00, 'Costas',             '+55 11 5550-0122','2023-11-20', 11),

('Carioca Pay',                '10.000.023/0001-23', 50000000.00, 'Master',             '+55 21 5550-0123','2024-02-01', 12),
('Guanabara Bebidas',          '10.000.024/0001-24', 14000000.00, 'Manga',              '+55 21 5550-0124','2025-01-08', 12),

('Biscayne Motors',            '10.000.025/0001-25', 30000000.00, 'Master',             '+1 305 555-0125', '2024-02-15', 13),
('Everglades Hotéis',          '10.000.026/0001-26',  8000000.00, 'Apoio',              '+1 305 555-0126', '2025-04-02', 13),

('Vesúvio Energia',            '10.000.027/0001-27', 20000000.00, 'Master',             '+39 081 555-0127','2024-07-10', 14),
('Partenope Pasta',            '10.000.028/0001-28',  6000000.00, 'Manga',              '+39 081 555-0128','2023-09-25', 14),

('Dragon Spirits',             '10.000.029/0001-29', 12000000.00, 'Master',             '+44 1978 555-129','2024-06-01', 15),
('Cymru Telecom',              '10.000.030/0001-30',  4000000.00, 'Manga',              '+44 1978 555-130','2025-01-12', 15),

('Ruhr Mineração',             '10.000.031/0001-31',  8000000.00, 'Master',             '+49 209 555-0131','2024-07-01', 16),
('Königsblau Brewing',         '10.000.032/0001-32',  2500000.00, 'Apoio',              '+49 209 555-0132','2023-12-05', 16),

('Spree Digital',              '10.000.033/0001-33',  7000000.00, 'Master',             '+49 30 5550-0133','2024-07-01', 17),
('Berlin Mobil',               '10.000.034/0001-34',  2000000.00, 'Manga',              '+49 30 5550-0134','2025-02-14', 17),

('Foxes Logistics',            '10.000.035/0001-35',  9000000.00, 'Master',             '+44 116 555-0135','2024-06-25', 18),
('Midlands Insure',            '10.000.036/0001-36',  3000000.00, 'Costas',             '+44 116 555-0136','2023-10-30', 18),

('Solent Marine',              '10.000.037/0001-37',  6500000.00, 'Master',             '+44 23 5550-0137','2024-07-02', 19),
('Solent Ferries',             '10.000.038/0001-38',  2200000.00, 'Manga',              '+44 23 5550-0138','2025-03-09', 19),

('Steel City Metais',          '10.000.039/0001-39',  6000000.00, 'Master',             '+44 114 555-0139','2024-07-01', 20),
('Blades Fitness',             '10.000.040/0001-40',  1800000.00, 'Apoio',              '+44 114 555-0140','2024-11-18', 20);