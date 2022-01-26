--1.	Enumerar todos os atletas e as suas respetivas posições.

SELECT Genero, Nome, Posicao 
FROM Pessoa, Participacao 
WHERE idPessoa = idAtleta
ORDER BY Genero, Posicao;