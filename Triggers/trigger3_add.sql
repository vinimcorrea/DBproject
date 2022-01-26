CREATE VIEW AtletaView(NomeAtleta, competicaoo, nacao, Posição)
AS SELECT nome, Competicao.genero, Pais, Posicao
FROM Pessoa, Competicao, ComitivaOlimpica, Participacao, Atleta
WHERE idPessoa = Atleta.idAtleta AND ComitivaOlimpica.idComitiva = Atleta.idComitiva  
AND Participacao.idAtleta = Atleta.idAtleta AND Competicao.idCompeticao = Atleta.idCompeticao
ORDER BY Competicao.genero ASC;


CREATE TRIGGER adicionaAtleta
INSTEAD OF INSERT ON AtletaView
FOR EACH ROW
BEGIN 
	INSERT OR IGNORE INTO Pessoa(nome, genero, nacionalidade) VALUES(new.nomeatleta, new.competicaoo, new.nacao);
	INSERT OR IGNORE INTO Atleta(idComitiva, idAtleta, idCompeticao) SELECT idComitiva, idPessoa, idCompeticao FROM Pessoa, ComitivaOlimpica, Competicao WHERE nome = new.nomeatleta AND Pais = new.nacao AND Competicao.genero = new.competicaoo;
END;