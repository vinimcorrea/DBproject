.bail ON
.mode columns
.headers ON
.nullvalue NULL

-- 6. Atletas da competição feminina.
SELECT Nome as Atletas
FROM Pessoa, Atleta
WHERE IdPessoa = IdAtleta 
AND IdCompeticao like '%502%'
ORDER BY Nome;