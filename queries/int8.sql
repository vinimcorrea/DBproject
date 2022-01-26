--8.	Enunciar o pódio de ambas as competições com as respetivas medalhas.

SELECT C.genero, nome,  Pr.posicao, Me.tipo
FROM Pessoa  P 
INNER JOIN Atleta A
	on P.IdPessoa = A.IdAtleta
INNER JOIN Competicao C
	on A.IdCompeticao = C.IdCompeticao
INNER JOIN Participacao Pr
	 on A.IdAtleta = Pr.IdAtleta 
INNER JOIN Ocorrencia Oc
	on A.IdAtleta = Oc.IdAtleta
INNER JOIN Medalha Me
	on IdMedalha = Oc.idOcorrencia
 WHERE (Pr.Posicao >= 1) AND (Pr.Posicao <= 3);
