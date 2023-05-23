CREATE DATABASE csgo;
USE csgo;
CREATE TABLE mapa(
idmapa INT PRIMARY KEY auto_increment,
Nomemapa VARCHAR(45));

CREATE TABLE questionario(
idquest INT PRIMARY KEY auto_increment,
fkmapa int,
constraint fkmapa foreign key (fkmapa) references mapa(idmapa));

CREATE TABLE time(
idTime INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
ranking INT,
fundador VARCHAR(45),
dtfundacao date);

CREATE TABLE jogador(
idjogador INT PRIMARY KEY auto_increment,
Nick VARCHAR(50),
rating2 float ,
KillsPerRound float ,
Headshots  float,
DeathsPerRound float,
fktimej INT,
constraint fktimej foreign key(fktimej) references time(idTime));

CREATE TABLE usuario(
idUsuario INT primary key auto_increment,
nome VARCHAR(50),
nickname VARCHAR(45),
email VARCHAR(45) unique,
senha VARCHAR(45),
confirmarSenha VARCHAR(45),
nivelGc INT,
fktime INT,
constraint fkQime foreign key(fktime) references time(idTime));

INSERT INTO time VALUES
(null, 'Imperal', 29, 'Felippe Martins', '2018-03-09'),
(null, 'Mibr', 30, 'Paulo Velloso', '2003-03-01'),
(null, 'Imperal', 09, 'Jaime Pádua', '2017-08-08');


UPDATE time set fundador  = 'Paulo Velloso' where idTime = 2;
SELECT * FROM time;

SELECT COUNT(usuario.fktime) as voto, time.nome AS times 
        FRom  usuario JOIN time ON  time.idtime = usuario.fktime group by usuario.fktime;

INSERT INTO jogador VALUES
(null, 'Fallen', 1.11, 0.67, 28.6, 0.58, 1),
(null, 'Boltz', 1.14, 0.70, 37.5, 0.61,1 ),
(null, 'Chelo', 1.10, 0.68, 58.0, 0.63,1 ),
(null, 'Vini', 1.05, 0.63, 50.1, 0.63 ,1 ),
(null, 'Jota', 1.13, 0.69, 42.2, 0.59,1 ),
(null, 'Hen1', 1.25, 0.74, 31.1, 0.52,2 ),
(null, 'Exit', 1.17, 0.68, 50, 0.54,2 ),
(null, 'Tuurtle', 1.09, 0.68, 62.8, 0.61,2 ),
(null, 'brnz4n', 1.16, 0.72, 55.5, 0.66,2 ),
(null, 'insani', 1.22, 0.76, 57.3, 0.63,2 ),
(null, 'arT', 0.98, 0.61, 44.0, 0.71,3 ),
(null, 'yuurih', 1.08, 0.67, 43.0, 0.64, 3),
(null, 'Kscerato', 1.20, 0.67, 43.0, 0.64, 3),
(null, 'yuurih', 1.08, 0.67, 43.0, 0.64, 3),
(null, 'yuurih', 1.08, 0.67, 43.0, 0.64, 3);

CREATE TABLE mapa(
idmapa INT PRIMARY KEY auto_increment,
Nomemapa VARCHAR(45));

INSERT INTO mapa VALUES
(null, 'Mirage'),
(null, 'Inferno'),
(null, 'Dust2'),
(null, 'Nuke');


SELECT * FROM usuario;

SELECT COUNT(questionario.fkmapa) as voto, Nomemapa  
        FRom  questionario JOIN mapa ON  mapa.idmapa = questionario.fkmapa group by questionario.fkmapa;

	

select rating2, KillsPerRound, Headshots, DeathsPerRound from jogador where nick = 'art';

