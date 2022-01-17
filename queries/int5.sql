.bail ON
.mode columns
.headers ON
.nullvalue NULL

-- 5. Tempo máximo e mínimo para concluir cada prova.
SELECT genero, max(TempoTotal) 
AS MaiorTempo,min(TempoTotal)
AS MenorTempo
FROM Participacao, Competicao
WHERE Participacao.IdCompeticao = Competicao.idCompeticao AND TempoTotal != '-'
GROUP BY Participacao.IdCompeticao;

SELECT idCompeticao, avg(TempoNatacao)
FROM Participacao
SELECT idCompeticao, time((JULIANDAY(avg(TempoTotal)) * 60), 'unixepoch') as tempoMedioSec
FROM Participacao
GROUP BY idCompeticao;

SELECT idCompeticao,  time(100123, 'unixepoch') as tempoMedio
FROM Participacao
GROUP BY idCompeticao;

SELECT idCompeticao, JULIANDAY(avg(TempoCorrida))
FROM Participacao
GROUP BY idCompeticao;