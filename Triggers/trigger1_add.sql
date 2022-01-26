CREATE TRIGGER maisAtletas
BEFORE INSERT ON Atleta
BEGIN
SELECT CASE
WHEN (SELECT idComitiva FROM Pessoa, Atleta WHERE idPessoa = NEW.idAtleta AND idComitiva = NEW.idComitiva AND idCompeticao = new.idCompeticao GROUP BY Nacionalidade HAVING COUNT(idComitiva) >= 3)
THEN RAISE (ABORT, 'Número de atletas inscritos da mesma nacionalidade na mesma competição excedido.')
END;
END;
