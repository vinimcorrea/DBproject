-- 10.	 Especificar o número de atletas presentes em cada competição.

SELECT Genero, count(*) AS numeroAtletas FROM Atleta, Pessoa WHERE idPessoa=idAtleta AND Genero = 'F' 
UNION 
SELECT Genero, count(*) AS numeroAtletas FROM Atleta, Pessoa WHERE idPessoa=idAtleta AND Genero = 'M'; 
