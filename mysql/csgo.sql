CREATE DATABASE csgo;
USE csgo;

CREATE TABLE questionario(
idquest INT PRIMARY KEY auto_increment,
mirage VARCHAR(45),
inferno VARCHAR(45),
dust2 VARCHAR(45),
nuke VARCHAR(45));

CREATE TABLE time(
idTime INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
ranking INT,
fundador VARCHAR(45),
dtfundacao date);

CREATE TABLE jogador(
idjogador INT PRIMARY KEY auto_increment,
nome varchar(45),
nickname VARCHAR(45),
idade DATE,
nivelGc INT,
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
fkques INT,
constraint fkQime foreign key(fktime) references time(idTime),
constraint fkQues foreign key(fkques) references questionario(idquest));

INSERT INTO time VALUES
(null, 'Imperal', 29, 'Felippe Martins'),
(null, 'Mibr', 30, 'Felippe Martins'),
(null, 'Imperal', 29, 'Felippe Martins'),



