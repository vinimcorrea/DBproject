.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

--Adiciona tuplos na tabela atleta que eram para ser inseridos numa view 

SELECT * FROM Pessoa; -- Antes de ser inserido;
SELECT * FROM Atleta;    -- Antes de ser inserido;

INSERT INTO AtletaView VALUES('Vittoria Lopes','F', 'BRA', 6);

SELECT * FROM Pessoa;  -- Verifica-se que foi inserido um novo tuplo em Pessoa;
SELECT * FROM Atleta;     -- Verifica-se que foi inserido um novo tuplo em Atleta;