--7.	Para cada competição, referir o nome dos atletas a que foram atribuidos cartões assim como a cor e a quantidade dos mesmos.

SELECT Genero, Nome, C.cor, COUNT(*) AS numCartões FROM Pessoa  P
INNER JOIN Atleta A
    on P.IdPessoa = A.IdAtleta
INNER JOIN Ocorrencia O
    on A.IdAtleta = O.IdAtleta
INNER JOIN Cartao C
    on O.IdOcorrencia = C.IdCartao 
WHERE (Genero = 'F') GROUP BY Nome 
UNION 
SELECT Genero, Nome, C.Cor, COUNT(*) AS numCartões FROM Pessoa  P 
INNER JOIN Atleta A
    on P.IdPessoa = A.IdAtleta
INNER JOIN Ocorrencia O
    on A.IdAtleta = O.IdAtleta
INNER JOIN Cartao C
    on O.IdOcorrencia = C.IdCartao 
WHERE (Genero = 'M') GROUP BY Nome ORDER BY Genero ASC, Nome ASC;
