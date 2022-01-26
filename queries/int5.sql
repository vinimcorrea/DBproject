-- 5.	Calcular o tempo máximo e o tempo mínino utilizado quer na competição feminina quer na competição masculina.

SELECT genero, max(TempoTotal) 
AS MaiorTempo,min(TempoTotal)
AS MenorTempo
FROM Participacao, Competicao
WHERE Participacao.IdCompeticao = Competicao.idCompeticao AND TempoTotal != '-'
GROUP BY Participacao.IdCompeticao;

