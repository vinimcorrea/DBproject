 -- 4.	Nomear o atleta que desistiu primeiro em cada competição.
  
SELECT  Competicao.genero, nome, Ocorrencia.Tempo, Ocorrencia.descricao
FROM Pessoa, Atleta, Ocorrencia, Desistencia, Competicao
WHERE idPessoa = Atleta.idAtleta 
AND Ocorrencia.idAtleta = Atleta.idAtleta
AND idOcorrencia = idDesistencia
AND Ocorrencia.idCompeticao = Competicao.idCompeticao;