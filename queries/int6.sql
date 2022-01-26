-- 6.	Listar as atletas da competição feminina.

SELECT Nome as AtletasFemininas
FROM Pessoa, Atleta
WHERE IdPessoa = IdAtleta 
AND IdCompeticao like '%502%'
ORDER BY Nome;