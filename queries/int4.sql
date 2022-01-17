.bail ON
.mode columns
.headers ON
.nullvalue NULL
 -- 4. O atleta que desistiu primeiro em cada competição.
SELECT  Competicao.genero, nome, Ocorrencia.Tempo, Ocorrencia.descricao
FROM Pessoa, Atleta, Ocorrencia, Desistencia, Competicao
WHERE idPessoa = Atleta.idAtleta 
AND Ocorrencia.idAtleta = Atleta.idAtleta
AND idOcorrencia = idDesistencia
AND Ocorrencia.idCompeticao = Competicao.idCompeticao;