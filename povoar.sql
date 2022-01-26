.bail on
.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

INSERT INTO Pessoa VALUES(1, 'Jonathan Brownlee', 180, 'M', 78.4, 34, 'GBR');
INSERT INTO Pessoa VALUES(2, 'Alistair Brownlee', 183, 'M', 74.2, 35, 'GBR');
INSERT INTO Pessoa VALUES(3, 'Henri Schoeman', 167, 'M', 65.6, 23, 'RSA');
INSERT INTO Pessoa VALUES(4, 'Gwen Jorgensen', 165, 'F', 54.0,  27, 'USA');
INSERT INTO Pessoa VALUES(5, 'Nicola Spirig Hug', 158, 'F', 49.3, 19, 'SUI');
INSERT INTO Pessoa VALUES(6, 'Vicky Holland', 156, 'F', 78.4, 21, 'GBR');
INSERT INTO Pessoa VALUES(7, 'João José Pereira', 182, 'M', 82.3, 27, 'POR');
INSERT INTO Pessoa VALUES(8, 'Marten van Riel', 186, 'M', 84.5, 24, 'BEL');
INSERT INTO Pessoa VALUES(9, 'Mario Mola', 158, 'M', 63.1, 22, 'ESP');
INSERT INTO Pessoa VALUES(10, 'Aaron Royle', 184, 'M', 87.4, 30, 'AUS');
INSERT INTO Pessoa VALUES(11, 'Alessandro Fabian', 184, 'M', 82.4, 28, 'ITA');
INSERT INTO Pessoa VALUES(12, 'Tyler Mislawchuk', 187, 'M', 85.7, 19, 'CAN');
INSERT INTO Pessoa VALUES(13, 'Bárbara Riveros', 156, 'F', 65.4, 29, 'CHI');
INSERT INTO Pessoa VALUES(14, 'Emma Moffatt', 162, 'F', 54.7, 21, 'AUS');
INSERT INTO Pessoa VALUES(15, 'Claudia Rivas', 153, 'F', 46.6, 31, 'MEX');
INSERT INTO Pessoa VALUES(16, 'Agnieszka Jerzyk', 156, 'F', 56.4, 27, 'POL');
INSERT INTO Pessoa VALUES(17, 'Sarah True', 161, 'F', 57.1, 34, 'USA');
INSERT INTO Pessoa VALUES(18, 'Pâmella Oliveira', 162, 'F', 57.3, 29,  'BRA');
INSERT INTO Pessoa VALUES(19, 'João Pedro Silva', 178, 'M', 74.1, 31, 'POR');
INSERT INTO Pessoa VALUES(20, 'Alexander Bryukhankov', 187, 'M', 85.9, 35, 'RUS');

INSERT INTO Pessoa VALUES(101, 'Roberto Menescal', 173, 'M', 78.2, 41, 'BRA');
INSERT INTO Pessoa VALUES(102, 'Alberto Barretto', 173, 'M', 70.1, 45, 'BRA');
INSERT INTO Pessoa VALUES(103, 'Tércia Figueiredo', 172, 'M', 64.5, 37, 'BRA');
INSERT INTO Pessoa VALUES(104, 'Kenya Parkinson', 181, 'M', 72.8, 48, 'NZL');
INSERT INTO Pessoa VALUES(105, 'Marguerite Moreno', 167, 'M', 55.2, 43, 'POR');
INSERT INTO Pessoa VALUES(106, 'Darcy Riggs', 168, 'M', 62.0, 54, 'USA');
INSERT INTO Pessoa VALUES(107, 'Anis Ball', 165, 'M', 64.9, 42, 'BWA');
INSERT INTO Pessoa VALUES(108, 'Celia Alvarado', 165, 'M', 52.1,39, 'COL');



INSERT INTO Pessoa(IdPessoa, Nome, Genero, Nacionalidade) VALUES(201, 'Pedro Castro', 'M', 'POR');
INSERT INTO Pessoa(IdPessoa, Nome, Genero, Nacionalidade) VALUES(202, 'Beatriz Rocha', 'F', 'BRA');
INSERT INTO Pessoa(IdPessoa, Nome, Genero, Nacionalidade) VALUES(203, 'Bianca Tamburini', 'F', 'ITA');
INSERT INTO Pessoa(IdPessoa, Nome, Genero, Nacionalidade) VALUES(204, 'Louis Murphy', 'M', 'GBR');
INSERT INTO Pessoa(IdPessoa, Nome, Genero, Nacionalidade) VALUES(205, 'Marvin Irwin', 'M', 'GBR');


INSERT INTO Competicao VALUES(501, '2016-08-18',  'M');
INSERT INTO Competicao VALUES(502, '2016-08-20',  'F');
  

INSERT INTO ComitivaOlimpica VALUES(1, 'POR', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(2, 'GBR', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(3, 'CAN', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(4, 'BRA', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(5, 'USA', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(6, 'MEX', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(7, 'AUS', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(8, 'ITA', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(9, 'POL', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(10, 'BEL', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(11, 'CHI', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(12, 'ESP', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(13, 'RSA', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(14, 'SUI', 'Triatlo');
INSERT INTO ComitivaOlimpica VALUES(15, 'RUS', 'Triatlo');

INSERT INTO Atleta VALUES(2, 1, 501);
INSERT INTO Atleta VALUES(2, 2, 501);
INSERT INTO Atleta VALUES(13, 3, 501);
INSERT INTO Atleta VALUES(5, 4, 502);
INSERT INTO Atleta VALUES(14, 5, 502);
INSERT INTO Atleta VALUES(2, 6, 502);
INSERT INTO Atleta VALUES(1, 7, 501);
INSERT INTO Atleta VALUES(10, 8, 501);
INSERT INTO Atleta VALUES(12, 9, 501);
INSERT INTO Atleta VALUES(7, 10, 501);
INSERT INTO Atleta VALUES(8, 11, 501);
INSERT INTO Atleta VALUES(3, 12, 501);
INSERT INTO Atleta VALUES(11, 13, 502);
INSERT INTO Atleta VALUES(7, 14, 502);
INSERT INTO Atleta VALUES(6, 15, 502);
INSERT INTO Atleta VALUES(9, 16, 502);
INSERT INTO Atleta VALUES(5, 17, 502);
INSERT INTO Atleta VALUES(4, 18, 502);
INSERT INTO Atleta VALUES(1, 19, 501);
INSERT INTO Atleta VALUES(14, 20, 501);


INSERT INTO Tecnico VALUES(1, 201);
INSERT INTO Tecnico VALUES(4, 202);
INSERT INTO Tecnico VALUES(8, 203);
INSERT INTO Tecnico VALUES(2, 204);
INSERT INTO Tecnico VALUES(2, 205);



INSERT INTO Arbitro VALUES(101, 'Geral');
INSERT INTO Arbitro VALUES(102, 'Natação');
INSERT INTO Arbitro VALUES(103, 'Transição');
INSERT INTO Arbitro VALUES(104, 'Ciclismo');
INSERT INTO Arbitro VALUES(105, 'Corrida');
INSERT INTO Arbitro VALUES(106, 'Cronometragem');
INSERT INTO Arbitro VALUES(107, 'Geral');
INSERT INTO Arbitro VALUES(108, 'Natação');
  
INSERT INTO Prova VALUES(601, 501, 'Natação');
INSERT INTO Prova VALUES(602, 501, 'Ciclismo');
INSERT INTO Prova VALUES(603, 501, 'Corrida');
INSERT INTO Prova VALUES(604, 502, 'Natação');
INSERT INTO Prova VALUES(605, 502, 'Ciclismo');
INSERT INTO Prova VALUES(606, 502, 'Corrida');

INSERT INTO Ocorrencia(IdOcorrencia, IdAtleta,IdCompeticao, Tempo) VALUES(1001, 1, 501, '01:45:01');
INSERT INTO Ocorrencia VALUES(1002, 7, 501, '00:17:31', 'Desistência por fadiga');
INSERT INTO Ocorrencia(IdOcorrencia,  IdAtleta,IdCompeticao, Tempo) VALUES(1003, 2, 501,  '01:45:07');
INSERT INTO Ocorrencia(IdOcorrencia, IdAtleta, IdCompeticao, Tempo) VALUES(1004,  5, 501, '00:43:56');
INSERT INTO Ocorrencia(IdOcorrencia, IdAtleta, IdCompeticao, Tempo) VALUES(1006,  13, 502, '01:28:23');;
INSERT INTO Ocorrencia(IdOcorrencia, IdAtleta, IdCompeticao, Tempo) VALUES(1007,  4, 502, '01:56:16');
INSERT INTO Ocorrencia(IdOcorrencia, IdAtleta, IdCompeticao, Tempo) VALUES(1009,  3, 501, '01:45:32');
INSERT INTO Ocorrencia(IdOcorrencia, IdAtleta, IdCompeticao, Tempo) VALUES(1010,  5, 502, '01:56:56');
INSERT INTO Ocorrencia VALUES(1008,  18, 502, '01:43:56', 'Desistência provocada por acidente durante a Competição');
INSERT INTO Ocorrencia(idOcorrencia, IdAtleta, IdCompeticao,Tempo) VALUES(1011,  6, 502, '01:57:01');

INSERT INTO Cartao VALUES(1004, 'Amarelo');
INSERT INTO Cartao VALUES(1006, 'Vermelho');

INSERT INTO Medalha VALUES(1001, 'Ouro');
INSERT INTO Medalha VALUES(1003, 'Prata');
INSERT INTO Medalha VALUES(1009, 'Bronze');

INSERT INTO Medalha VALUES(1007, 'Ouro');
INSERT INTO Medalha VALUES(1010, 'Prata');
INSERT INTO Medalha VALUES(1011, 'Bronze');


INSERT INTO Desistencia VALUES(1002);
INSERT INTO Desistencia VALUES(1008);

INSERT INTO Olimpiada VALUES(2016, 'Rio de Janeiro', '2016-08-05', '2016-08-21');

INSERT INTO Participacao VALUES(1, 501,'00:17:24', '00:55:04', '00:31:09', '1:45:01', 1);
INSERT INTO Participacao VALUES(2, 501, '00:17:24', '00:55:04', '00:31:16', '1:45:07', 2);
INSERT INTO Participacao(IdAtleta, IdCompeticao, TempoNatacao) VALUES(10, 501, '00:17:24');
INSERT INTO Participacao VALUES(3, 501, '00:17:25', '00:55:01', '00:31:50', '1:45:43', 3);
INSERT INTO Participacao(IdAtleta, IdCompeticao, TempoNatacao, TempoCiclismo)  VALUES(18, 502, '00:21:09', '01:09:03');
INSERT INTO Participacao VALUES(4, 502, '00:19:12', '01:01:21', '00:34:09', '1:56:16', 1);
INSERT INTO Participacao VALUES(5, 502, '00:19:12', '01:01:22', '00:34:50', '1:56:56', 2);
INSERT INTO Participacao VALUES(6, 502, '00:19:09', '01:01:26', '00:34:54', '1:57:01', 3);
INSERT INTO Participacao VALUES(7, 501, '00:18:03', '00:55:52', '00:30:38', '1:45:52', 5);

INSERT INTO ComissaoTecnica VALUES(7001, 18, 5);
INSERT INTO ComissaoTecnica VALUES(7002, 9, 13);
INSERT INTO ComissaoTecnica VALUES(7003, 12, 1);
INSERT INTO ComissaoTecnica VALUES(7004, 15, 4);
  
  
  
  
  