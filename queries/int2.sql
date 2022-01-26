--2.	Identificar os atletas que representam Portugal em ambas as competições (feminina e masculina).

SELECT Genero, Nome FROM Pessoa, Atleta  WHERE idPessoa = idAtleta AND Nacionalidade = 'Portuguesa' AND Genero = 'F'
UNION 
SELECT Genero, Nome FROM Pessoa, Atleta  WHERE idPessoa = idAtleta AND Nacionalidade = 'Portuguesa' AND Genero = 'M';