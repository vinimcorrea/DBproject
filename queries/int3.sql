--3.	Determinar quantos atletas tem cada comitiva olímpica.

SELECT Pais, COUNT(*) AS numeroAtletas FROM Pessoa, Atleta, ComitivaOlimpica WHERE idPessoa = idAtleta AND Atleta.idComitiva = ComitivaOlimpica.idComitiva GROUP BY Nacionalidade;