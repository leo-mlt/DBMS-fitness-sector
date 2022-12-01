SET NAMES latin1;
SET FOREIGN_KEY_CHECKS = 0;

-- --------------------------------
-- DEFINIZIONE DATABASE E TABELLE
-- --------------------------------

-- ---------------------------------
-- Database AziendaCentriFitness
-- ---------------------------------
BEGIN;
CREATE DATABASE IF NOT EXISTS `AziendaCentroFitness`;
COMMIT;

USE `AziendaCentroFitness`;


-- ---------------------------------
-- Tabella Dipendente
-- ---------------------------------
DROP TABLE IF EXISTS Dipendente;
CREATE TABLE Dipendente (
  CodFiscaleDip VARCHAR(45) NOT NULL,
  Nome VARCHAR (45) NOT NULL,
  Cognome VARCHAR (45) NOT NULL,
  DataNascita DATE NOT NULL,
  Citta VARCHAR(45) NOT NULL,
  Via VARCHAR (45) NOT NULL,
  NumCivico INT (5) NOT NULL,
  CAP INT(5) NOT NULL,
  Sesso CHAR(1) NOT NULL,
  IDDocumentoRiconoscimento VARCHAR (45) NOT NULL,
  Prefettura VARCHAR (45) NOT NULL,
  Responsabile VARCHAR (45) DEFAULT NULL,
  PRIMARY KEY(CodFiscaleDip),
   CONSTRAINT FK_Responsabile_Dipendente
    FOREIGN KEY(Responsabile)
	REFERENCES Dipendente(CodFiscaleDip)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella CentroFitness
-- ---------------------------------
DROP TABLE IF EXISTS CentroFitness;
CREATE TABLE CentroFitness (
  IDCentro VARCHAR(45) NOT NULL,
  Dimensione INT(45) NOT NULL,
  Telefono INT(10) NOT NULL,
  CapienzaMassima INT (45) NOT NULL,
  Citta VARCHAR(45) NOT NULL,
  Via VARCHAR (45) NOT NULL,
  NumCivico INT (5) NOT NULL,
  CAP INT(5) NOT NULL,
  Direttore VARCHAR(45) NOT NULL,
  PRIMARY KEY(IDCentro),
  CONSTRAINT FK_Direttore_Dipendente
    FOREIGN KEY(Direttore)
	REFERENCES Dipendente(CodFiscaleDip)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella CalendarioCentroFitness
-- ---------------------------------
DROP TABLE IF EXISTS CalendarioCentroFitness;
CREATE TABLE CalendarioCentroFitness (
  IDCentro VARCHAR(45) NOT NULL,
  NomeGiorno VARCHAR (45) NOT NULL,
  OrarioApertura TIME NOT NULL,
  OrarioChiusura TIME NOT NULL,
  PRIMARY KEY(IDCentro, NomeGiorno),
  CONSTRAINT FK_Calendario_Centro
    FOREIGN KEY(IDCentro)
	REFERENCES CentroFitness(IDCentro)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Sala
-- ---------------------------------
DROP TABLE IF EXISTS Sala;
CREATE TABLE Sala (
  IDSala VARCHAR (45) NOT NULL,
  IDCentro VARCHAR(45) NOT NULL,
  Nome VARCHAR(45) NOT NULL,
  TipologiaContratto VARCHAR (45) NOT NULL,
  ResponsabileSala VARCHAR(45) NOT NULL,
  PRIMARY KEY(IDSala),
  CONSTRAINT FK_Sala_Centro
    FOREIGN KEY(IDCentro)
	REFERENCES CentroFitness(IDCentro)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION,
    CONSTRAINT FK_Responsabile_Sala
    FOREIGN KEY(ResponsabileSala)
	REFERENCES Dipendente(CodFiscaleDip)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Attrezzo
-- ---------------------------------
DROP TABLE IF EXISTS Attrezzo;
CREATE TABLE Attrezzo (
  IDAttrezzo VARCHAR(45) NOT NULL,
  NomeAttrezzo VARCHAR(45) NOT NULL,
  IDSala VARCHAR (45) NOT NULL,
  ConsumoEnergetico INT (45) NOT NULL,
  Tipologia VARCHAR(45) NOT NULL,
  LivelloUsura INT(5) NOT NULL DEFAULT 0,
  PRIMARY KEY(IDAttrezzo),
  CONSTRAINT FK_Attrezzo_Sala
    FOREIGN KEY(IDSala)
	REFERENCES Sala(IDSala)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella OrarioDiLavoro
-- ---------------------------------
DROP TABLE IF EXISTS OrarioDiLavoro;
CREATE TABLE OrarioDiLavoro (
  IDCentro VARCHAR(45) NOT NULL,
  CodFiscaleDip VARCHAR (45) NOT NULL,
  NomeGiornoLavoro VARCHAR(45) NOT NULL,
  attivita VARCHAR (45) NOT NULL,
  OrarioInizio TIME NOT NULL,
  OrarioFine TIME NOT NULL,
  PRIMARY KEY(IDCentro, CodFiscaleDip, NomeGiornoLavoro, Attivita, OrarioInizio),
  CONSTRAINT FK_Centro_OrarioLavoro
    FOREIGN KEY(IDCentro)
	REFERENCES CentroFitness(IDCentro)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Dipendente_OrarioLavoro
    FOREIGN KEY(CodFiscaleDip)
	REFERENCES Dipendente(CodFiscaleDip)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella Cliente
-- ---------------------------------
DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
  CodFiscaleCliente VARCHAR(45) NOT NULL,
  Nome VARCHAR (45) NOT NULL,
  Cognome VARCHAR (45) NOT NULL,
  DataNascita DATE NOT NULL,
  Citta VARCHAR(45) NOT NULL,
  Via VARCHAR (45) NOT NULL,
  NumCivico INT (5) NOT NULL,
  CAP INT(5) NOT NULL,
  Sesso CHAR(1) NOT NULL,
  IDDocumentoRiconoscimento VARCHAR (45) NOT NULL,
  Prefettura VARCHAR (45) NOT NULL,
  PRIMARY KEY(CodFiscaleCliente))
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Contratto
-- ---------------------------------
DROP TABLE IF EXISTS Contratto;
CREATE TABLE Contratto (
  IDContratto VARCHAR(45) NOT NULL,
  IDCentro VARCHAR (45) NOT NULL,
  Cliente VARCHAR (45) NOT NULL,
  Consulente VARCHAR (45) NOT NULL,
  TipologiaContratto VARCHAR(45) NOT NULL,
  AccessiSettimanali INT (5),
  ImportoMensile INT(5) NOT NULL,
  DurataMensile INT (5) NOT NULL,
  DataIscrizione DATE NOT NULL,
  Scopo VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDContratto),
  CONSTRAINT FK_Centro_Contratto
    FOREIGN KEY(IDCentro)
	REFERENCES CentroFitness(IDCentro)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Consulente_Dipendente
    FOREIGN KEY(Consulente)
	REFERENCES Dipendente(CodFiscaleDip)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Cliente_Contratto
    FOREIGN KEY(Cliente)
	REFERENCES Cliente (CodFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella FasciMuscolari
-- ---------------------------------
DROP TABLE IF EXISTS FasciMuscolari;
CREATE TABLE FasciMuscolari (
  NomeFasciMuscolari VARCHAR(45) NOT NULL,
  Livello VARCHAR (45) NOT NULL,
  PRIMARY KEY(NomeFasciMuscolari, Livello))
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella Potenziamento
-- ---------------------------------
DROP TABLE IF EXISTS Potenziamento;
CREATE TABLE Potenziamento (
  IDContratto VARCHAR(45) NOT NULL,
  NomeFasciMuscolari VARCHAR (45) NOT NULL,
  Livello VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDContratto, NomeFasciMuscolari),
  CONSTRAINT FK_Potenziamento_Contratto
    FOREIGN KEY(IDContratto)
	REFERENCES Contratto(IDContratto)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Potenziamento_Muscoli
    FOREIGN KEY(NomeFasciMuscolari, Livello)
	REFERENCES FasciMuscolari(NomeFasciMuscolari, Livello)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    )
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella PianoPagamento
-- ---------------------------------
DROP TABLE IF EXISTS PianoPagamento;
CREATE TABLE PianoPagamento (
  IDPagamento VARCHAR (45) NOT NULL,
  IDContratto VARCHAR(45) NOT NULL,
  TipologiaPagamento VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDPagamento),
  CONSTRAINT FK_Pagamento_Contratto
    FOREIGN KEY(IDContratto)
	REFERENCES Contratto(IDContratto)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Rata
-- ---------------------------------
DROP TABLE IF EXISTS Rata;
CREATE TABLE Rata (
  IDRata VARCHAR(45) NOT NULL,
  IDPagamento VARCHAR (45) NOT NULL,
  ImportoRata INT(5) NOT NULL,
  IstitutoFinanziario VARCHAR (45) NOT NULL,
  TassoInteresse INT (5) NOT NULL,
  DataScadenza DATE NOT NULL,
  Stato VARCHAR(45) NOT NULL,
  PRIMARY KEY(IDRata),
  CONSTRAINT FK_Pagamento_Rata
    FOREIGN KEY(IDPagamento)
	REFERENCES PianoPagamento(IDPagamento)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella Spogliatoio
-- ---------------------------------
DROP TABLE IF EXISTS Spogliatoio;
CREATE TABLE Spogliatoio (
  IDSpogliatoio VARCHAR(45) NOT NULL,
  Capienza INT(5) NOT NULL,
  PostiDisponibili INT (5) NOT NULL,
  Posizione VARCHAR (45) NOT NULL,
  Sesso CHAR (1) NOT NULL,
  PRIMARY KEY(IDSpogliatoio))
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella Armadietto
-- ---------------------------------
DROP TABLE IF EXISTS Armadietto;
CREATE TABLE Armadietto (
  IDArmadietto VARCHAR(45) NOT NULL,
  IDSpogliatoio VARCHAR (45) NOT NULL,
  CombinazioneNumerica VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDArmadietto),
  CONSTRAINT FK_Armadietto_Spogliatoio
    FOREIGN KEY(IDSpogliatoio)
	REFERENCES Spogliatoio(IDSpogliatoio)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- ---------------------------------
-- Tabella Accesso
-- ---------------------------------
DROP TABLE IF EXISTS Accesso;
CREATE TABLE Accesso (
  IDAccesso VARCHAR(45) NOT NULL,
  IDCentro VARCHAR (45) NOT NULL,
  CodFiscaleCliente VARCHAR (45) NOT NULL,
  IDArmadietto VARCHAR (45) NOT NULL,
  DataAccesso DATE NOT NULL,
  OrarioEntrata TIME NOT NULL,
  OrarioUscita TIME DEFAULT NULL,
  PRIMARY KEY(IDAccesso),
  CONSTRAINT FK_Centro_Accesso
    FOREIGN KEY(IDCentro)
	REFERENCES CentroFitness(IDCentro)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Cliente_Accesso
    FOREIGN KEY(CodFiscaleCliente)
	REFERENCES Cliente(CodFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Armadietto_Accesso
    FOREIGN KEY(IDArmadietto)
	REFERENCES Armadietto (IDArmadietto)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------
-- Tabella MisurazioniImpedenziometriche
-- --------------------------------------
DROP TABLE IF EXISTS MisurazioniImpedenziometriche;
CREATE TABLE MisurazioniImpedenziometriche (
  IDMisurazione VARCHAR(45) NOT NULL,
  CodFiscaleCliente VARCHAR (45) NOT NULL,
  DataMisurazione DATE NOT NULL,
  AcquaTotale DOUBLE NOT NULL,
  MassaMagra DOUBLE NOT NULL,
  MassaGrassa DOUBLE NOT NULL,
  Peso INT(5) NOT NULL,
  Altezza DOUBLE NOT NULL,
  StatoCliente VARCHAR (45) NOT NULL,
  Entita VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDMisurazione),
  CONSTRAINT FK_Misurazione_Cliente
    FOREIGN KEY(CodFiscaleCliente)
	REFERENCES Cliente(CodFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Dieta
-- ---------------------------------
DROP TABLE IF EXISTS Dieta;
CREATE TABLE Dieta (
  IDDieta VARCHAR(45) NOT NULL,
  ApportoCalorico INT (5) NOT NULL,
  NumeroPasti INT(5) NOT NULL,
  PRIMARY KEY(IDDieta)
    )
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella SchedaAlimentazione
-- ---------------------------------
DROP TABLE IF EXISTS SchedaAlimentazione;
CREATE TABLE SchedaAlimentazione (
  IDSchedaAlimentazione VARCHAR(45) NOT NULL,
  CodFiscaleCliente VARCHAR (45) NOT NULL,
  IDDieta VARCHAR (45) NOT NULL,
  DataInizio DATE NOT NULL,
  DataFine DATE NOT NULL,
  MedicoScheda VARCHAR (45) NOT NULL,
  Obiettivo VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDSchedaAlimentazione),
  CONSTRAINT FK_Alimentaione_Cliente
    FOREIGN KEY(CodFiscaleCliente)
	REFERENCES Cliente(codFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Alimentazione_Medico
    FOREIGN KEY(MedicoScheda)
	REFERENCES Dipendente(CodFiscaleDip)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Dieta_Alimentazione
    FOREIGN KEY(IDDieta)
	REFERENCES Dieta (IDDieta)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella Pietanza
-- ---------------------------------
DROP TABLE IF EXISTS Pietanza;
CREATE TABLE Pietanza (
  NomePietanza VARCHAR(45) NOT NULL,
  ComposizionePietanza VARCHAR (2000) NOT NULL,
  PRIMARY KEY(NomePietanza))
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella ComposizioneDieta
-- ---------------------------------
DROP TABLE IF EXISTS ComposizioneDieta;
CREATE TABLE ComposizioneDieta (
  IDDieta VARCHAR(45) NOT NULL,
  NomePietanza VARCHAR (45) NOT NULL,
  Pasto VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDDieta, NomePietanza),
  CONSTRAINT FK_ComposizoneDieta_NomePietanza
    FOREIGN KEY(NomePietanza)
	REFERENCES Pietanza(NomePietanza)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_ComposizioneDieta_Dieta
    FOREIGN KEY(IDDieta)
	REFERENCES Dieta(IDDieta)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- ---------------------------------
-- Tabella AlimentazionePassata
-- ---------------------------------
DROP TABLE IF EXISTS AlimentazionePassata;
CREATE TABLE AlimentazionePassata (
  IDSchedaAlimentazione VARCHAR(45) NOT NULL,
  CodFiscaleCliente VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDSchedaAlimentazione, CodFiscaleCliente),
  CONSTRAINT FK_SchedaAlimentazione_AlimentazionePassata
    FOREIGN KEY(IDSchedaAlimentazione)
	REFERENCES SchedaAlimentazione(IDSchedaAlimentazione)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Cliente_AlimentazionePassata
    FOREIGN KEY(CodFiscaleCliente)
	REFERENCES Cliente (CodFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella SchedaAllenamento
-- ---------------------------------
DROP TABLE IF EXISTS SchedaAllenamento;
CREATE TABLE SchedaAllenamento (
  IDSchedaAllenamento VARCHAR(45) NOT NULL,
  CodFiscaleCliente VARCHAR (45) NOT NULL,
  TutorScheda VARCHAR (45) NOT NULL,
  DataInizio DATE NOT NULL,
  DataFine DATE DEFAULT NULL,
  PRIMARY KEY(IDSchedaAllenamento),
    CONSTRAINT FK_TutorScheda_Dipendente
    FOREIGN KEY(Tutorscheda)
	REFERENCES Dipendente(CodFiscaleDip)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Cliente_SchedaAllenamento
    FOREIGN KEY(CodFiscaleCliente)
	REFERENCES Cliente (CodFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella AllenamentoPassato
-- ---------------------------------
DROP TABLE IF EXISTS AllenamentoPassato;
CREATE TABLE AllenamentoPassato (
  IDSchedaAllenamento VARCHAR(45) NOT NULL,
  CodFiscaleCliente VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDSchedaAllenamento, CodFiscaleCliente),
  CONSTRAINT FK_AllenamentoPassato_SchedaAllenamento
    FOREIGN KEY(IDSchedaAllenamento)
	REFERENCES SchedaAllenamento(IDSchedaAllenamento)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Cliente_AllenamentoPassato
    FOREIGN KEY(CodFiscaleCliente)
	REFERENCES Cliente (CodFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Esercizio
-- ---------------------------------
DROP TABLE IF EXISTS Esercizio;
CREATE TABLE Esercizio (
  IDEsercizio VARCHAR(45) NOT NULL,
  Nome VARCHAR (45) NOT NULL,
  DispendioEnergeticoMedio INT (45) NOT NULL,
  PRIMARY KEY(IDEsercizio))
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella ComposizioneAllenamento
-- ---------------------------------
DROP TABLE IF EXISTS ComposizioneAllenamento;
CREATE TABLE ComposizioneAllenamento (
  IDEsercizio VARCHAR(45) NOT NULL,
  IDSchedaAllenamento VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDEsercizio, IdSchedaAllenamento),
  CONSTRAINT FK_EsercizioScheda_Esercizio
    FOREIGN KEY(IDEsercizio)
	REFERENCES Esercizio(IDEsercizio)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_SchedaAllenamento_Esercizio
    FOREIGN KEY(IDSchedaAllenamento)
	REFERENCES SchedaAllenamento(IDSchedaAllenamento)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Aerobico
-- ---------------------------------
DROP TABLE IF EXISTS Aerobico;
CREATE TABLE Aerobico (
  IDEsercizioAerobico VARCHAR(45) NOT NULL,
  DurataMinuti INT(5) NOT NULL,
  PRIMARY KEY(IDEsercizioAerobico),
  CONSTRAINT FK_Aerobico_Esercizio
    FOREIGN KEY(IDEsercizioAerobico)
	REFERENCES Esercizio(IDEsercizio)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella Anaerobico
-- ---------------------------------
DROP TABLE IF EXISTS Anaerobico;

CREATE TABLE Anaerobico (
  IDEsercizioAnaerobico VARCHAR(45) NOT NULL,
  NomeAnaerobico VARCHAR (45) NOT NULL,
  NumEsecuzioni INT (45) NOT NULL,
  TempoDiRecupero INT (45) NOT NULL,
  PRIMARY KEY(IDEsercizioAnaerobico, NomeAnaerobico),
  CONSTRAINT FK_Anaerobico_Esercizio
    FOREIGN KEY(IDEsercizioAnaerobico)
	REFERENCES Esercizio(IDEsercizio)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella ConfigurazioneUtilizzo
-- ---------------------------------
DROP TABLE IF EXISTS ConfigurazioneUtilizzo;
CREATE TABLE ConfigurazioneUtilizzo (
  IDConfigurazione VARCHAR(45) NOT NULL,
  IDEsercizio VARCHAR (45) NOT NULL,
  IDAttrezzo VARCHAR (45) NOT NULL,
  NomeRegolazione VARCHAR (45) NOT NULL,
  Intensita INT (5) NOT NULL,
  IstruzioneEsatta BOOLEAN NOT NULL,
  PRIMARY KEY(IDConfigurazione),
  CONSTRAINT FK_Esercizio_Configiurazione
    FOREIGN KEY(IDEsercizio)
	REFERENCES Esercizio(IDEsercizio)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Configurazione_Attrezzo
    FOREIGN KEY(IDAttrezzo)
	REFERENCES Attrezzo(IDAttrezzo)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella MonitoraggioSmart
-- ---------------------------------
DROP TABLE IF EXISTS MonitoraggioSmart;
CREATE TABLE MonitoraggioSmart (
  IDMonitoraggio VARCHAR(45) NOT NULL,
  IDEsercizio VARCHAR (45) NOT NULL,
  IDSchedaAllenamento VARCHAR (45) NOT NULL,
  IstanteInizio TIME NOT NULL,
  IstanteFine TIME NOT NULL,
  DataMonitoraggio DATE NOT NULL,
  PRIMARY KEY(IDMonitoraggio),
  CONSTRAINT FK_Monitoraggio_Allenamento
    FOREIGN KEY(IDSchedaAllenamento)
	REFERENCES SchedaAllenamento(IDSchedaAllenamento)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Monitoraggio_Esercizio
    FOREIGN KEY(IDEsercizio)
	REFERENCES Esercizio(IDEsercizio)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella DatiRipetizione
-- ---------------------------------
DROP TABLE IF EXISTS DatiRipetizione;
CREATE TABLE DatiRipetizione (
  IDRipetizione VARCHAR(45) NOT NULL,
  NomeRipetizione VARCHAR (45) NOT NULL,
  NumeroEsecuzioni VARCHAR (45) NOT NULL,
  TempoRecupero INT(5) NOT NULL,
  PRIMARY KEY(IDRipetizione))
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella MonitoraggioRipetizione
-- ---------------------------------
DROP TABLE IF EXISTS MonitoraggioRipetizione;
CREATE TABLE MonitoraggioRipetizione (
  IDMonitoraggio VARCHAR(45) NOT NULL,
  IDRipetizione VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDMonitoraggio, IDRipetizione),
  CONSTRAINT FK_Monitoraggio_Ripetizione
    FOREIGN KEY(IDMonitoraggio)
	REFERENCES MonitoraggioSmart(IDMonitoraggio)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_DatiRipetizione_Ripetizione
    FOREIGN KEY(IDRipetizione)
	REFERENCES DatiRipetizione(IDRipetizione)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella ConfigurazioneCliente
-- ---------------------------------
DROP TABLE IF EXISTS ConfigurazioneCliente;
CREATE TABLE ConfigurazioneCliente (
  IDMonitoraggio VARCHAR(45) NOT NULL,
  IDConfigurazione VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDMonitoraggio, IDConfigurazione),
  CONSTRAINT FK_Monitoraggio_Configurazione
    FOREIGN KEY(IDMonitoraggio)
	REFERENCES MonitoraggioSmart(IDMonitoraggio)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_ConfigurazioneCli_MonitoraggioCli
    FOREIGN KEY(IDConfigurazione)
	REFERENCES ConfigurazioneUtilizzo(IDConfigurazione)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella ConfigurazioneRipetizione
-- ---------------------------------
DROP TABLE IF EXISTS ConfigurazioneRipetizione;
CREATE TABLE ConfigurazioneRipetizione (
  EsercizioAnaerobico VARCHAR(45) NOT NULL,
  IDConfigurazione VARCHAR (45) NOT NULL,
  Nome VARCHAR (45) NOT NULL,
  PRIMARY KEY(EsercizioAnaerobico, IDConfigurazione, Nome),
  CONSTRAINT FK_Anaerobico_Configurazione
    FOREIGN KEY(EsercizioAnaerobico, Nome)
	REFERENCES Anaerobico(IDEsercizioAnaerobico, NomeAnaerobico)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_ConfigurazioneAnaerobico_Configurazione
    FOREIGN KEY(IDConfigurazione)
	REFERENCES ConfigurazioneUtilizzo(IDConfigurazione)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella AttrezzoUtilizzato
-- ---------------------------------
DROP TABLE IF EXISTS AttrezzoUtilizzato;
CREATE TABLE AttrezzoUtilizzato (
  IDAttrezzo VARCHAR(45) NOT NULL,
  IDMonitoraggio VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDAttrezzo, IDMonitoraggio),
  CONSTRAINT FK_Utilizzato_Attrezzo
    FOREIGN KEY(IDAttrezzo)
	REFERENCES Attrezzo(IDAttrezzo)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
	CONSTRAINT FK_Utilizzato_Monitoraggio
    FOREIGN KEY(IDMonitoraggio)
	REFERENCES MonitoraggioSmart(IDMonitoraggio)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Piscina
-- ---------------------------------
DROP TABLE IF EXISTS Piscina;
CREATE TABLE Piscina (
  IDPiscina VARCHAR(45) NOT NULL,
  IDCentro VARCHAR (45) NOT NULL,
  Locazione VARCHAR (45) NOT NULL,
  TipologiaContratto VARCHAR(45) NOT NULL,
  Dimensione INT (5) NOT NULL,
  PRIMARY KEY(IDPiscina),
  CONSTRAINT FK_Centro_Piscina
    FOREIGN KEY(IDCentro)
	REFERENCES CentroFitness(IDCentro)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- ---------------------------------
-- Tabella AccessoPiscina
-- ---------------------------------
DROP TABLE IF EXISTS AccessoPiscina;
CREATE TABLE AccessoPiscina (
  IDPiscina VARCHAR (45) NOT NULL,
  IDContratto VARCHAR(45) NOT NULL,
  NumeroAccessi INT (5) NOT NULL,
  PRIMARY KEY(IDPiscina, IDContratto),
  CONSTRAINT FK_AccessoPiscina_Contratto
    FOREIGN KEY(IDContratto)
	REFERENCES Contratto (IDContratto)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_AccessoPiscina_Piscina
    FOREIGN KEY(IDPiscina)
	REFERENCES Piscina(IDPiscina)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella MultiSede
-- ---------------------------------
DROP TABLE IF EXISTS MultiSede;
CREATE TABLE MultiSede (
  IDContratto VARCHAR(45) NOT NULL,
  IDCentro VARCHAR (45) NOT NULL,
  FasciaOraria VARCHAR (45) NOT NULL,
  IngressiMax INT (5) NOT NULL,
    PRIMARY KEY(IDContratto, IDCentro),
  CONSTRAINT FK_Centro_Multisede
    FOREIGN KEY(IDCentro)
	REFERENCES CentroFitness(IDCentro)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_MultiSede_Contratto
    FOREIGN KEY(IDContratto)
	REFERENCES Contratto(IDContratto)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Corso
-- ---------------------------------
DROP TABLE IF EXISTS Corso;
CREATE TABLE Corso (
  IDCorso VARCHAR(45) NOT NULL,
  NomeDisciplina VARCHAR (45) NOT NULL,
  IstruttoreCorso VARCHAR (45) NOT NULL,
  DataInizio DATE NOT NULL,
  DataFine DATE NOT NULL,
  NumeroMaxPartecipanti INT (5) NOT NULL,
  Livello VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDCorso),
  CONSTRAINT FK_Istruttore_Corso
    FOREIGN KEY(IstruttoreCorso)
	REFERENCES Dipendente(CodFiscaleDip)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella CorsoFrequentato
-- ---------------------------------
DROP TABLE IF EXISTS CorsoFrequentato;
CREATE TABLE CorsoFrequentato (
  IDCorso VARCHAR(45) NOT NULL,
  CodFiscaleCliente VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDCorso, CodFiscaleCliente),
  CONSTRAINT FK_CorsoFrequentato_Corso
    FOREIGN KEY(IDCorso)
	REFERENCES Corso(IDCorso)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_CorsoFrequentanto_Cliente
    FOREIGN KEY(CodFiscaleCliente)
	REFERENCES Cliente(CodFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;





-- ---------------------------------
-- Tabella CorsoDisponibile
-- ---------------------------------
DROP TABLE IF EXISTS CorsoDisponibile;
CREATE TABLE CorsoDisponibile (
  IDCorso VARCHAR (45) NOT NULL,
  IDContratto VARCHAR(45) NOT NULL,
  PRIMARY KEY(IDCorso, IDContratto),
  CONSTRAINT FK_CorsoDisponibile_Contratto
    FOREIGN KEY(IDContratto)
	REFERENCES Contratto(IDContratto)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_CorsoDisponibile_Corso
    FOREIGN KEY(IDCorso)
	REFERENCES Corso(IDCorso)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella CorsoInPiscina
-- ---------------------------------
DROP TABLE IF EXISTS CorsoInPiscina;
CREATE TABLE CorsoInPiscina (
  IDCorso VARCHAR(45) NOT NULL,
  IDPiscina VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDCorso, IDPiscina),
  CONSTRAINT FK_CorsoPiscina_Corso
    FOREIGN KEY(IDCorso)
	REFERENCES Corso(IDCorso)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_CorsoPiscina_Piscina
    FOREIGN KEY(IDPiscina)
	REFERENCES Piscina (IDPiscina)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella CorsoInSala
-- ---------------------------------
DROP TABLE IF EXISTS CorsoInSala;
CREATE TABLE CorsoInSala (
  IDCorso VARCHAR(45) NOT NULL,
  IDSala VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDCorso, IDSala),
  CONSTRAINT FK_CorsoSala_Corso
    FOREIGN KEY(IDCorso)
	REFERENCES Corso(IDCorso)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_CorsoSala_Sala
    FOREIGN KEY(IDSala)
	REFERENCES Sala(IDSala)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella CalendarioCorso
-- ---------------------------------
DROP TABLE IF EXISTS CalendarioCorso;
CREATE TABLE CalendarioCorso (
  IDCalendarioCorso VARCHAR(45) NOT NULL,
  IDCorso VARCHAR (45) NOT NULL,
  IDCentro VARCHAR (45) NOT NULL,
  GiornoSettimana VARCHAR (45) NOT NULL,
  OrarioInizio TIME NOT NULL,
  OrarioFine TIME NOT NULL,
  PRIMARY KEY(IDCalendarioCorso),
  CONSTRAINT FK_CalendarioCorso_Centro
    FOREIGN KEY(IDCentro)
	REFERENCES CentroFitness(IDCentro)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_CalendarioCorso_Corso
    FOREIGN KEY(IDCorso)
	REFERENCES Corso(IDCorso)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Utente
-- ---------------------------------
DROP TABLE IF EXISTS Utente;
CREATE TABLE Utente (
  Username VARCHAR(45) NOT NULL,
  IDContratto VARCHAR (45) NOT NULL,
  Password VARCHAR (100) NOT NULL,
  Credibilita DOUBLE DEFAULT NULL,
  PRIMARY KEY(Username),
  CONSTRAINT FK_Utente_Contratto
    FOREIGN KEY(IDContratto)
	REFERENCES Contratto(IDContratto)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Thread
-- ---------------------------------
DROP TABLE IF EXISTS Thread;
CREATE TABLE Thread (
  IDThread VARCHAR(45) NOT NULL,
  Titolo VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDThread))
ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- ---------------------------------
-- Tabella Post
-- ---------------------------------
DROP TABLE IF EXISTS Post;
CREATE TABLE Post (
  IDPost VARCHAR(45) NOT NULL,
  Testo VARCHAR (5000) NOT NULL,
  Username VARCHAR (45) NOT NULL,
  Timestamp  TIMESTAMP NOT NULL,
  Risposta VARCHAR(45),
  AreaForum VARCHAR (50) NOT NULL,
  ThreadPost VARCHAR(50) NOT NULL,
  PRIMARY KEY(IDPost),
  CONSTRAINT FK_Post_Risposta
    FOREIGN KEY(Risposta)
	REFERENCES Post(IDPost)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Post_Username
    FOREIGN KEY(Username)
	REFERENCES Utente(Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Post_Thread
    FOREIGN KEY(ThreadPost)
	REFERENCES Thread (IDThread)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Link
-- ---------------------------------
DROP TABLE IF EXISTS Link;
CREATE TABLE Link (
  URL VARCHAR(300) NOT NULL,
  PRIMARY KEY(URL))
ENGINE=InnoDB DEFAULT CHARSET=latin1;





-- ---------------------------------
-- Tabella LinkPost
-- ---------------------------------
DROP TABLE IF EXISTS LinkPost;
CREATE TABLE LinkPost (
  URL VARCHAR(300) NOT NULL,
  IDPost VARCHAR (45) NOT NULL,
  PRIMARY KEY(URL, IDPost),
  CONSTRAINT FK_URL_LinkPost
    FOREIGN KEY(URL)
	REFERENCES Link(URL)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Post_LinkPost
    FOREIGN KEY(IDPost)
	REFERENCES Post(IDPost)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------
-- Tabella Voto
-- ---------------------------------
DROP TABLE IF EXISTS Voto;
CREATE TABLE Voto (
  IDVoto VARCHAR(45) NOT NULL,
  Risposta VARCHAR (45) NOT NULL,
  Stelle INT(5) NOT NULL,
  PRIMARY KEY(IDVoto),
  CONSTRAINT FK_Voto_Risposta
    FOREIGN KEY(Risposta)
	REFERENCES Post(Risposta)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Interesse
-- ---------------------------------
DROP TABLE IF EXISTS Interesse;
CREATE TABLE Interesse (
  NomeInteresse VARCHAR(45) NOT NULL,
  PRIMARY KEY(NomeInteresse))
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella InteressiUtente
-- ---------------------------------
DROP TABLE IF EXISTS InteressiUtente;
CREATE TABLE InteressiUtente (
  Username VARCHAR(45) NOT NULL,
  NomeInteresse VARCHAR (45) NOT NULL,
  PRIMARY KEY(Username, NomeInteresse),
  CONSTRAINT FK_Username_InteresseUtente
    FOREIGN KEY(Username)
	REFERENCES Utente(Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Interesse_InteresseUtente
    FOREIGN KEY(NomeInteresse)
	REFERENCES Interesse(NomeInteresse)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella RichiestaAmicizia
-- ---------------------------------
DROP TABLE IF EXISTS RichiestaAmicizia;
CREATE TABLE RichiestaAmicizia (
  IDRichiesta VARCHAR(45) NOT NULL,
  Username VARCHAR (45) NOT NULL,
  UsernameDestinatario VARCHAR (45) NOT NULL,
  StatoRichiesta VARCHAR (45) NOT NULL,
  PRIMARY KEY(IDRichiesta),
  CONSTRAINT FK_Richiesta_Username
    FOREIGN KEY(Username)
	REFERENCES Utente(Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_UsernameDest_Utente
    FOREIGN KEY(UsernameDestinatario)
	REFERENCES Utente(Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- ---------------------------------
-- Tabella Amico
-- ---------------------------------
DROP TABLE IF EXISTS Amico;
CREATE TABLE Amico (
  UsernameAmico VARCHAR(45) NOT NULL,
  Username VARCHAR (45) NOT NULL,
  PRIMARY KEY(UsernameAmico, Username),
  CONSTRAINT FK_Amico_Utente
    FOREIGN KEY(UsernameAmico)
	REFERENCES Utente (Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Amico_UtenteAmico
    FOREIGN KEY(Username)
	REFERENCES Utente(Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella Cerchia
-- ---------------------------------
DROP TABLE IF EXISTS Cerchia;
CREATE TABLE Cerchia (
  NomeCerchia VARCHAR(45) NOT NULL,
  Argomento VARCHAR (45) NOT NULL,
  PRIMARY KEY(NomeCerchia))
ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- ---------------------------------
-- Tabella Appartenenza
-- ---------------------------------
DROP TABLE IF EXISTS Appartenenza;
CREATE TABLE Appartenenza (
  NomeCerchia VARCHAR(45) NOT NULL,
  UsernameAmico VARCHAR (45) NOT NULL,
  Username VARCHAR (45) NOT NULL,
  PRIMARY KEY(NomeCerchia, UsernameAmico, Username),
  CONSTRAINT FK_Cerchia_Appartenenza
    FOREIGN KEY(NomeCerchia)
	REFERENCES Cerchia (NomeCerchia)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_UsernameAmico_Appartenenza
    FOREIGN KEY(UsernameAmico, Username)
	REFERENCES Amico(UsernameAmico, Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella SuggerimentoInserimento
-- ---------------------------------
DROP TABLE IF EXISTS SuggerimentoInserimento;
CREATE TABLE SuggerimentoInserimento (
  NomeCerchia VARCHAR(45) NOT NULL,
  UsernameAmico VARCHAR (45) NOT NULL,
  Username VARCHAR (45) NOT NULL,
  PRIMARY KEY(NomeCerchia, UsernameAmico, Username),
  CONSTRAINT FK_Cerchia_Suggerimento
    FOREIGN KEY(NomeCerchia)
	REFERENCES Cerchia (NomeCerchia)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_UsernameAmico_Suggerimento
    FOREIGN KEY(UsernameAmico)
	REFERENCES Amico(UsernameAmico)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Username_Suggerimento
    FOREIGN KEY(Username)
	REFERENCES Amico (Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;




-- ---------------------------------
-- Tabella Sfida
-- ---------------------------------
DROP TABLE IF EXISTS Sfida;
CREATE TABLE Sfida (
  Proponente VARCHAR(45) NOT NULL,
  DataInizioSfida  DATE NOT NULL,
  DataLancio DATE NOT NULL,
  DataScadenza DATE DEFAULT NULL,
  Scopo VARCHAR (50) NOT NULL,
  ThreadSfida VARCHAR (50) NOT NULL,
  AllenamentoSfida VARCHAR (50) NOT NULL,
  AlimentazioneSfida VARCHAR (50) NOT NULL,
  Vincitore VARCHAR (50) DEFAULT NULL,
  PRIMARY KEY(Proponente, DataInizioSfida),
  CONSTRAINT FK_Proponente_Utente
    FOREIGN KEY(Proponente)
	REFERENCES Utente (Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Thread_Sfida
    FOREIGN KEY(ThreadSfida)
	REFERENCES Thread(IDThread)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Allenamento_Sfida
    FOREIGN KEY(AllenamentoSfida)
	REFERENCES SchedaAllenamento (IDSchedaAllenamento)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Alimentazione_Sfida
    FOREIGN KEY (AlimentazioneSfida)
    REFERENCES SchedaAlimentazione (IDSchedaAlimentazione)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Vincitore_Sfida
    FOREIGN KEY (Vincitore)
    REFERENCES Utente (Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella Partecipante
-- ---------------------------------
DROP TABLE IF EXISTS Partecipante;
CREATE TABLE Partecipante (
  UsernameAmico VARCHAR(45) NOT NULL,
  Proponente VARCHAR (45) NOT NULL,
  DataInizioSfida DATE NOT NULL,
  PRIMARY KEY(Proponente, UsernameAmico, DataInizioSfida),
  CONSTRAINT FK_UsernameAmico_Partecipante
    FOREIGN KEY(UsernameAmico)
	REFERENCES Amico (UsernameAmico)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Proponente_Partecipante
    FOREIGN KEY(Proponente, DataInizioSfida)
	REFERENCES Sfida(Proponente, DataInizioSfida)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Username_Partecipante
    FOREIGN KEY(Proponente)
	REFERENCES Amico (Username)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- ---------------------------------
-- Tabella ClienteOccasionale
-- ---------------------------------
DROP TABLE IF EXISTS ClienteOccasionale;
CREATE TABLE ClienteOccasionale (
  CodFiscaleCliente VARCHAR(45) NOT NULL,
  TipologiaTariffa VARCHAR (45) NOT NULL,
  TariffaAccesso INT (50) NOT NULL,
  PRIMARY KEY(CodFiscaleCliente),
  CONSTRAINT FK_Cliente_ClienteOccasionale
    FOREIGN KEY(CodFiscaleCliente)
	REFERENCES Cliente (CodFiscaleCliente)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=latin1;
