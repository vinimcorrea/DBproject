DROP TABLE IF EXISTS Pessoa;
CREATE TABLE Pessoa(
	idPessoa INTEGER PRIMARY KEY, 	
	nome VARCHAR(30), 
	altura INTEGER, 
	genero CHAR(1) CHECK (genero in ('M', 'F')), 
	peso REAL, 
	nacionalidade VARCHAR(20)
);

DROP TABLE IF EXISTS ComitivaOlimpica;
CREATE TABLE  ComitivaOlimpica(
	idComitiva INTEGER PRIMARY KEY, 
	pais VARCHAR(30)  NOT NULL, 
	desporto VARCHAR(15)  CHECK (desporto in ('Triatlo'))	
);

DROP TABLE IF EXISTS Tecnico;
CREATE TABLE Tecnico(
	idComitiva REFERENCES ComitivaOlimpica, 
    idPessoa REFERENCES Pessoa,
	PRIMARY KEY(idComitiva, idPessoa)
);

DROP TABLE IF EXISTS Arbitro;
CREATE TABLE Arbitro( 
	idPessoa REFERENCES Pessoa, 
	tipo VARCHAR(15) NOT NULL CONSTRAINT tipoArbitro CHECK(tipo in ('Geral', 'Natação', 'Transição', 'Ciclismo', 'Corrida', 'Cronometragem', 'Chegada'))
);

DROP TABLE IF EXISTS Atleta;
CREATE TABLE Atleta(
	idComitiva REFERENCES ComitivaOlimpica, 
	idAtleta REFERENCES Pessoa,
	PRIMARY KEY(idAtleta, idComitiva)
);

DROP TABLE IF EXISTS Prova;
CREATE TABLE Prova(
	idProva INTEGER PRIMARY KEY, 
	data TEXT, 
	tipo VARCHAR(15) NOT NULL CONSTRAINT tipoProva CHECK (tipo in ('Ciclismo', 'Natação', 'Corrida'))
	);

DROP TABLE IF EXISTS Ocorrencia;
CREATE TABLE Ocorrencia(
	idOcorrencia INTEGER PRIMARY KEY, 
	minuto TIME, 	
	descricao TEXT
);

DROP TABLE IF EXISTS Cartao;
CREATE TABLE Cartao(	
	coID REFERENCES Ocorrencia, 
	caID REFERENCES Pessoa, 
	cor VARCHAR(10) CHECK(cor in ('Amarelo', 'Vermelho')), 
	PRIMARY KEY(coID, caID)
);

DROP TABLE IF EXISTS Medalha;
CREATE TABLE Medalha(
	idCartao REFERENCES Ocorrencia, 
	idAtleta REFERENCES Atleta, 
	tipo  VARCHAR(10) CHECK(tipo in ('Bronze', 'Prata', 'Ouro')), 
	PRIMARY KEY(idAtleta, idCartao)
);

DROP TABLE IF EXISTS Desistencia;
CREATE TABLE Desistencia(
	idDesistencia REFERENCES Ocorrencia, 
	idAtletaComitiva REFERENCES Atleta,
	PRIMARY KEY(idAtletaComitiva, idDesistencia)
);

DROP TABLE IF EXISTS Olimpiada;
CREATE TABLE Olimpiada(
	ano INTEGER  CONSTRAINT anoOlimpico CHECK(ano in ('2016')), 
	cidade VARCHAR(20) CONSTRAINT cidadeOlimpica CHECK(cidade in ('Rio de Janeiro')), 
	DataInicial DATE, 
	DataFinal DATE, 
	PRIMARY KEY(ano, cidade), 
	CONSTRAINT dataOlimpica CHECK(DataInicial < DataFinal)
);

DROP TABLE IF EXISTS Participacao;
CREATE TABLE Participacao(
	idParticipacao REFERENCES Ocorrencia, 
	idAtleta REFERENCES Atleta, 
	tempo TIME,
	PRIMARY KEY(idAtleta, idParticipacao)
);

DROP TABLE IF EXISTS ComissaoTecnica;
CREATE TABLE ComissaoTecnica(
	idComissao INTEGER PRIMARY KEY, 
	NumeroDeTecnicos INTEGER, 
	comitiva REFERENCES ComitivaOlimpica(pais)
);

