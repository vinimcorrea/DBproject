-- Verificar que todos os atletas tem idade superior a 16 

--Atleta com idade menor que 16

INSERT INTO Pessoa VALUES(41, 'Katie Zaferes', 161, 'F', 57.1, 14, 'Estadunidense');
INSERT INTO Atleta VALUES(5,41,502);

--Atleta com idade igual a 16

INSERT INTO Pessoa VALUES(42, 'Kristian Blummenfelt', 171, 'M', 67.1, 16, 'Canadiana');
INSERT INTO Atleta VALUES(3,42,501);

--Atleta com idade superior a 16 

INSERT INTO Pessoa VALUES(43, 'Miguel Arraiolos', 181, 'M', 77.1, 20, 'Portuguesa');
INSERT INTO Atleta VALUES(1,43,501);

-- O atleta foi inscrito 
SELECT idAtleta, Nome, Nacionalidade FROM Pessoa, Atleta WHERE idPessoa = idAtleta AND idAtleta = 43;
