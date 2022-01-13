DROP TABLE IF EXISTS Pessoa;
CREATE TABLE Pessoa(
	IdPessoa INTEGER PRIMARY KEY, 	
	Nome VARCHAR(30), 
	Altura INTEGER, 
	Genero CHAR(1) CONSTRAINT generoPessoa CHECK(Genero in ('M', 'F' )),
	Peso REAL, 
	Idade INT,
	Nacionalidade VARCHAR(20) 
);

DROP TABLE IF EXISTS ComitivaOlimpica;
CREATE TABLE  ComitivaOlimpica(
	IdComitiva INTEGER PRIMARY KEY, 
	Pais VARCHAR(30), 
	Desporto VARCHAR(15)  CONSTRAINT desportoComitiva CHECK (Desporto in ('Triatlo'))
);

DROP TABLE IF EXISTS Tecnico;
CREATE TABLE Tecnico(
	IdComitiva REFERENCES ComitivaOlimpica ON DELETE SET NULL ON UPDATE CASCADE, 
    IdTecnico REFERENCES Pessoa ON DELETE SET NULL ON UPDATE CASCADE,
	PRIMARY KEY(IdComitiva, IdTecnico)
);

DROP TABLE IF EXISTS Arbitro;
CREATE TABLE Arbitro(
	IdArbitro REFERENCES Pessoa ON DELETE SET NULL ON UPDATE CASCADE,
	Tipo VARCHAR(15) NOT NULL CONSTRAINT tipoArbitro CHECK(Tipo in ('Geral', 'Natação', 'Transição', 'Ciclismo', 'Corrida', 'Cronometragem', 'Chegada')),
	PRIMARY KEY(IdArbitro)
);

DROP TABLE IF EXISTS Atleta;
CREATE TABLE Atleta(
	IdComitiva REFERENCES ComitivaOlimpica ON DELETE SET NULL ON UPDATE CASCADE, 
	IdAtleta REFERENCES Pessoa ON DELETE SET NULL ON UPDATE CASCADE,
	IdCompeticao REFERENCES Competicao ON DELETE SET NULL ON UPDATE CASCADE,
	PRIMARY KEY(IdAtleta)
);

DROP TABLE IF EXISTS Prova;
CREATE TABLE Prova(
	IdProva INTEGER PRIMARY KEY, 
	IdCompeticao REFERENCES Competicao ON DELETE SET NULL ON UPDATE CASCADE,
	Tipo VARCHAR(15) NOT NULL CONSTRAINT tipoProva CHECK (Tipo in ('Ciclismo', 'Natação', 'Corrida')) 
	);

DROP TABLE IF EXISTS Ocorrencia;
CREATE TABLE Ocorrencia(
	IdOcorrencia INTEGER PRIMARY KEY, 
	IdAtleta REFERENCES Atleta ON DELETE SET NULL ON UPDATE CASCADE,
	IdCompeticao REFERENCES Competicao ON DELETE SET NULL ON UPDATE CASCADE,
	Tempo TEXT, 	
	Descricao TEXT DEFAULT 'Sem Descrição'
);

DROP TABLE IF EXISTS Cartao;
CREATE TABLE Cartao(	
	IdCartao REFERENCES Ocorrencia ON DELETE SET NULL ON UPDATE CASCADE, 
	Cor VARCHAR(10) CHECK(Cor in ('Amarelo', 'Vermelho')), 
	PRIMARY KEY(IdCartao)
);

DROP TABLE IF EXISTS Medalha;
CREATE TABLE Medalha(
	IdMedalha REFERENCES Ocorrencia ON DELETE SET NULL ON UPDATE CASCADE, 
	Tipo  VARCHAR(10) CHECK(Tipo in ('Bronze', 'Prata', 'Ouro')), 
	PRIMARY KEY(IdMedalha)
);

DROP TABLE IF EXISTS Desistencia;
CREATE TABLE Desistencia(
	IdDesistencia REFERENCES Ocorrencia ON DELETE SET NULL ON UPDATE CASCADE, 
	PRIMARY KEY(IdDesistencia)
);


DROP TABLE IF EXISTS Competicao;
CREATE TABLE Competicao(
	IdCompeticao INTEGER PRIMARY KEY, 
	Data TEXT,
	Genero VARCHAR(1) CONSTRAINT generoNaoExistente CHECK(Genero in ('M','F'))
);

DROP TABLE IF EXISTS Olimpiada;
CREATE TABLE Olimpiada(
	Ano INTEGER  PRIMARY KEY CONSTRAINT anoOlimpico CHECK(Ano in ('2016')), 
	Cidade VARCHAR(20) CONSTRAINT cidadeOlimpica CHECK(Cidade in ('Rio de Janeiro')), 
	DataInicial DATE, 
	DataFinal DATE,  
	CONSTRAINT dataOlimpica CHECK(JULIANDAY(DataInicial) < JULIANDAY(DataFinal))
);	

DROP TABLE IF EXISTS Participacao;
CREATE TABLE Participacao(
	IdAtleta REFERENCES Atleta ON DELETE SET NULL ON UPDATE CASCADE, 
	IdCompeticao REFERENCES Competicao ON DELETE SET NULL ON UPDATE CASCADE,
	TempoNatacao TEXT DEFAULT '-',
	TempoCiclismo TEXT DEFAULT '-',
	TempoCorrida TEXT DEFAULT '-',
	TempoTotal TEXT DEFAULT '-',
	Posicao VARCHAR(3) DEFAULT '-',
	PRIMARY KEY(IdAtleta)
);

DROP TABLE IF EXISTS ComissaoTecnica;
CREATE TABLE ComissaoTecnica(
	IdComissao INTEGER PRIMARY KEY, 
	NumeroDeTecnicos INTEGER, 
	IdComitiva REFERENCES ComitivaOlimpica ON DELETE SET NULL ON UPDATE CASCADE
);

