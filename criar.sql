DROP TABLE IF EXISTS Pessoa;
CREATE TABLE Pessoa(
	idPessoa INTEGER PRIMARY KEY, 	
	nome VARCHAR(30) NOT NULL, 
	altura INTEGER, 
	genero CHAR(1) CHECK (genero in ('M', 'F')), 
	peso REAL, 
	nacionalidade VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS ComitivaOlimpica;
CREATE TABLE  ComitivaOlimpica(
	idComitiva INTEGER PRIMARY KEY, 
	pais VARCHAR(30)  NOT NULL, 
	desporto VARCHAR(15)  CHECK (desporto in ('Triatlo')) NOT NULL	
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
	idAtleta INTEGER PRIMARY KEY,
	idComitiva REFERENCES ComitivaOlimpica, 
	idPessoa REFERENCES Pessoa,
	idCompeticao REFERENCES Competicao
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
	tempo TEXT, 	
	descricao TEXT DEFAULT 'Sem Descrição'
);

DROP TABLE IF EXISTS Cartao;
CREATE TABLE Cartao(	
	IDCartao REFERENCES Ocorrencia, 
	IDAtleta REFERENCES Atleta, 
	cor VARCHAR(10) CHECK(cor in ('Amarelo', 'Vermelho')), 
	PRIMARY KEY(IDCartao, IDAtleta)
);

DROP TABLE IF EXISTS Medalha;
CREATE TABLE Medalha(
	IDMedalha REFERENCES Ocorrencia, 
	IDAtleta REFERENCES Atleta, 
	tipo  VARCHAR(10) CHECK(tipo in ('Bronze', 'Prata', 'Ouro')), 
	PRIMARY KEY(IDMedalha, IDAtleta)
);

DROP TABLE IF EXISTS Desistencia;
CREATE TABLE Desistencia(
	iDesistencia REFERENCES Ocorrencia, 
	iDAtleta REFERENCES Atleta,
	PRIMARY KEY(IDesistencia, IDAtleta)
);


DROP TABLE IF EXISTS Competicao;
CREATE TABLE Competicao(
	IDCompeticao INTEGER PRIMARY KEY, 
	data TEXT,
	genero VARCHAR(1) CHECK(genero in ('M','F'))
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
	idAtleta REFERENCES Atleta, 
	TempoNatacao TEXT DEFAULT '-',
	TempoCiclismo TEXT DEFAULT '-',
	TempoCorrida TEXT DEFAULT '-',
	TempoTotal TEXT DEFAULT '-',
	posicao VARCHAR(3) DEFAULT '-'
);

DROP TABLE IF EXISTS ComissaoTecnica;
CREATE TABLE ComissaoTecnica(
	idComissao INTEGER PRIMARY KEY, 
	NumeroDeTecnicos INTEGER, 
	comitiva REFERENCES ComitivaOlimpica(pais)
);

