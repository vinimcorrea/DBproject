CREATE TRIGGER InsertIdadeMinima
BEFORE INSERT ON Atleta
FOR EACH ROW
WHEN (SELECT idade FROM Atleta, Pessoa WHERE  idPessoa = new.idAtleta) < 16
BEGIN
	DELETE FROM Pessoa WHERE idPessoa = new.idAtleta;
	SELECT RAISE(ROLLBACK, 'Idade mínima não alcançada.');
END;
	

CREATE TRIGGER UpdateIdadeMinima
BEFORE UPDATE ON Atleta
FOR EACH ROW
WHEN (SELECT idade FROM Atleta, Pessoa WHERE  idPessoa = new.idAtleta) < 16
BEGIN
	SELECT RAISE(ROLLBACK, 'Idade mínima não alcançada.');
END;