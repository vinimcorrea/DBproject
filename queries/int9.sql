-- 9.	Calcular a média de idades de todos os atletas de cada comitiva olímpica.

SELECT Pais, avg(Idade) AS mediaIdadeAtleta FROM ComitivaOlimpica, Pessoa, Atleta WHERE idPessoa = idAtleta AND Atleta.idComitiva = ComitivaOlimpica.idComitiva GROUP BY Pais;