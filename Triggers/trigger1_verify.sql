-- Verificar a inserção de atletas na competição masculina 

-- Como na competição masculina já estão inscritos 2 atletas britânicos apenas deixa inscrever mais 1, dando erro na inscrição seguinte. 

--Inscrição válida
INSERT INTO Pessoa VALUES(21, 'William Mount', 170, 'M', 75.4, 36, 'Britânica'); 
INSERT INTO Atleta VALUES(2, 21, 501);

-- O atleta foi inscrito
SELECT  idAtleta, Nome, Nacionalidade FROM Pessoa, Atleta WHERE idPessoa = idAtleta AND idAtleta = 21;

--Inscrição inválida devido ao limite máximo de atletas da mesma nacionalidade
INSERT INTO Pessoa VALUES(22, 'Harry Riggs', 185, 'M', 77.4, 37, 'Britânica'); 
INSERT INTO Atleta VALUES(2, 22, 501);



-- Verificar a inserção de atletas na competição feminina

 -- Como na competição feminina só está escrita 1 atleta brasileira, podem ser inscritas mais 2 dando erro na inscrição seguinte. 
 
 --Inscrição válida 
 INSERT INTO Pessoa VALUES(23, 'Vittoria Lopes', 166, 'F', 56.3, 30,  'Brasileira'); 
INSERT INTO Atleta VALUES(4, 23, 502);

-- Foi introduzida a atleta
SELECT  idAtleta, Nome, Nacionalidade FROM Pessoa, Atleta WHERE idPessoa = idAtleta AND idAtleta = 23;

--Inscrição válida
INSERT INTO Pessoa VALUES(24, 'Brunna Silva', 158, 'F', 54.6, 28,  'Brasileira');  
INSERT INTO Atleta VALUES(4, 24, 502);

--Foi introduzida a atleta
SELECT  idAtleta, Nome, Nacionalidade FROM Pessoa, Atleta WHERE idPessoa = idAtleta AND idAtleta = 24;

--Inscrição inválida 
INSERT INTO Pessoa VALUES(25, 'Luisa Baptista' , 162, 'F', 57.3, 29,  'Brasileira');
INSERT INTO Atleta VALUES(4, 25, 502);


