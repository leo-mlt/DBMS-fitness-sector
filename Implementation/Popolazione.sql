USE AziendaCentroFitness;

-- -----------------------------------
-- POPOLAZIONE DATABASE
-- -----------------------------------

-- Record Centro Fitnss 
-- ----------------------------------------------------
INSERT INTO `aziendacentrofitness`.`centrofitness` (`IDCentro`, `Dimensione`, `Telefono`, `CapienzaMassima`, `Citta`, `Via`, `NumCivico`, `CAP`, `Direttore`) VALUES ('cf0001', '700', '353698', '100', 'Marsala', 'Garibaldi', '25', '91025', 'd0001');
INSERT INTO `aziendacentrofitness`.`centrofitness` (`IDCentro`, `Dimensione`, `Telefono`, `CapienzaMassima`, `Citta`, `Via`, `NumCivico`, `CAP`, `Direttore`) VALUES ('cf0002', '800', '353221', '120', 'Gela', 'Giovanni Bosco', '98', '93012', 'd0002');
INSERT INTO `aziendacentrofitness`.`centrofitness` (`IDCentro`, `Dimensione`, `Telefono`, `CapienzaMassima`, `Citta`, `Via`, `NumCivico`, `CAP`, `Direttore`) VALUES ('cf0003', '900', '845689', '150', 'Pisa', 'Vittorio Veneto', '26', '56127', 'd0003');
INSERT INTO `aziendacentrofitness`.`centrofitness` (`IDCentro`, `Dimensione`, `Telefono`, `CapienzaMassima`, `Citta`, `Via`, `NumCivico`, `CAP`, `Direttore`) VALUES ('cf0004', '750', '356987', '110', 'Milano', 'Italia', '12', '20155', 'd0004');
INSERT INTO `aziendacentrofitness`.`centrofitness` (`IDCentro`, `Dimensione`, `Telefono`, `CapienzaMassima`, `Citta`, `Via`, `NumCivico`, `CAP`, `Direttore`) VALUES ('cf0005', '700', '856932', '100', 'Roma', 'Altino', '140', '00148', 'd0005');
INSERT INTO `aziendacentrofitness`.`centrofitness` (`IDCentro`, `Dimensione`, `Telefono`, `CapienzaMassima`, `Citta`, `Via`, `NumCivico`, `CAP`, `Direttore`) VALUES ('cf0006', '725', '125693', '105', 'Palermo', 'Contessa Matilda', '39', '90125', 'd0006');
-- -----------------------------------------------------------

-- Record Dipendente
-- --------------------------------------------------
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('d0001', 'Luigi', 'Caradanna', '1985-02-25', 'Marsala', 'Limoni', '45', '91025', 'M', 'dr0001', 'Marsala');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('d0002', 'Ernesto', 'Fasulo', '1996-07-04', 'Gela', 'Da Vinci', '85', '36584', 'M', 'dr0002', 'Gela');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('d0003', 'Leo', 'Maltese', '1995-02-12', 'Pisa', 'Geronimo', '78', '65896', 'M', 'dr0003', 'Pisa');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('d0004', 'Marianna', 'Pulizzi', '1990-11-15', 'Milano', 'Viale', '25', '63589', 'F', 'dr0004', 'Petrosino');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('d0005', 'Antonino', 'Maltese', '1962-01-04', 'Roma', 'Quasimodo', '52', '85697', 'M', 'dr0007', 'Napoli');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('d0006', 'Giacomo', 'Marino', '1990-04-19', 'Palermo', 'Austria', '11', '12365', 'M', 'dr0008', 'Palermo');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('d0007', 'Giovanni', 'Martelli', '1980-03-15', 'Bologna', 'Colli', '12', '25846', 'M', 'dr0008', 'Bologna', 'd0001');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('d0009', 'Piero', 'Gambina', '1995-07-30', 'Siena', 'Europa', '52', '45425', 'M', 'dr0009', 'Siena', 'd0001');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('d0010', 'Alessia', 'Paladino', '1990-06-30', 'Latina', 'Latino', '55', '75488', 'F', 'dr0010', 'Latina', 'd0001');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('d0011', 'Vito', 'De Vita', '1980-12-31', 'Ferrara', 'Ferro', '14', '47558', 'M', 'dr0011', 'Ferrara', 'd0001');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('d0012', 'Francesco', 'Asaro', '1981-01-01', 'Venezia', 'Fiume', '57', '42533', 'M', 'dr0012', 'Venezia', 'd0001');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('dip1', 'Piero', 'Giallo', '1991-02-03', 'Ferrara', 'Messina', '12', '23538', 'M', 'dr0013', 'Ferrara', 'd0011');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('dip2', 'Alberto', 'Nuovo', '1989-03-01', 'Bergamo', 'Palermo', '256', '12365', 'M', 'dr0014', 'Bergamo', 'd0011');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('dip3', 'Alessia', 'Vecchi', '1986-03-06', 'Venezia', 'Cavour', '12', '14569', 'F', 'dr0015', 'Venezia', 'd0011');
INSERT INTO `aziendacentrofitness`.`dipendente` (`CodFiscaleDip`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`, `Responsabile`) VALUES ('dip4', 'Arianna', 'Buoni', '1995-12-31', 'Verona', 'Fiume', '15', '12356', 'F', 'dr0016', 'Verona', 'd0011');
-- ----------------------------------------------------

-- Record Accesso
-- ----------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0001', 'cf0001', 'cfc0001', 'arm0001', '2005-02-22', '14:30', '15:30');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0002', 'cf0001', 'cfc0002', 'arm0002', '2010-12-01', '11:00', '12:00');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0003', 'cf0001', 'cfc0003', 'arm0003', '2017-01-03', '19:00', '20:00');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0004', 'cf0001', 'cfc0004', 'arm0004', '2016-01-22', '16:00', '17:30');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0005', 'cf0001', 'cfc0005', 'arm0006', '2018-01-22', '21:00', '22:00');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0006', 'cf0001', 'cfc0001', 'arm0007', '2005-02-25', '14:30:00', '15:30:00');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0008', 'cf0001', 'cfc0002', 'arm0008', '2010-12-02', '11:00:00', '12:00:00');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0009', 'cf0001', 'cfc0003', 'arm0009', '2017-01-04', '19:00:00', '20:00:00');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0010', 'cf0001', 'cfc0004', 'arm00010', '2016-01-26', '16:00:00', '17:30:00');
INSERT INTO `aziendacentrofitness`.`accesso` (`IDAccesso`, `IDCentro`, `CodFiscaleCliente`, `IDArmadietto`, `DataAccesso`, `OrarioEntrata`, `OrarioUscita`) VALUES ('acc0011', 'cf0001', 'cfc0005', 'arm00012', '2018-01-29', '21:00:00', '22:00:00');
-- ---------------------------------------------------------

-- Record Cliente
-- --------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`cliente` (`CodFiscaleCliente`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('cfc0001', 'Leo', 'Maltese', '2001-02-28', 'Marsala', 'Mazzina', '23', '91025', 'M', 'dr1', 'Marsala');
INSERT INTO `aziendacentrofitness`.`cliente` (`CodFiscaleCliente`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('cfc0002', 'Paolo', 'Marchese', '1980-03-01', 'Napoli', 'Asia', '01', '36548', 'M', 'dr2', 'Napoli');
INSERT INTO `aziendacentrofitness`.`cliente` (`CodFiscaleCliente`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('cfc0003', 'Ettore', 'Grece', '1971-01-08', 'Chianti', 'Santa Teresa', '141', '53017', 'M', 'dr3', 'Chianti');
INSERT INTO `aziendacentrofitness`.`cliente` (`CodFiscaleCliente`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('cfc0004', 'Maria', 'Ferrari', '1981-11-23', 'Bari', 'Santa Melania', '114', '39020', 'F', 'dr4', 'Bari');
INSERT INTO `aziendacentrofitness`.`cliente` (`CodFiscaleCliente`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('cfc0005', 'Benito', 'Colombo', '1990-03-12', 'Roma', 'Belviglieri', '148', '00146', 'M', 'dr5', 'Roma');
INSERT INTO `aziendacentrofitness`.`cliente` (`CodFiscaleCliente`, `Nome`, `Cognome`, `DataNascita`, `Citta`, `Via`, `NumCivico`, `CAP`, `Sesso`, `IDDocumentoRiconoscimento`, `Prefettura`) VALUES ('cfc0006', 'Lara', 'Bellucci', '1993-04-26', 'Ribolla', 'Vittorio Emanuele', '54', '58027', 'F', 'dr6', 'Ribolla');
-- ---------------------------------------------------------------

-- Record Piscina
-- -------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`piscina` (`IDPiscina`, `IDCentro`, `Locazione`, `TipologiaContratto`, `Dimensione`) VALUES ('p0001', 'cf0001', 'Interna', 'Personalizzato', '100');
INSERT INTO `aziendacentrofitness`.`piscina` (`IDPiscina`, `IDCentro`, `Locazione`, `TipologiaContratto`, `Dimensione`) VALUES ('p0002', 'cf0001', 'Interna', 'Platinum', '80');
INSERT INTO `aziendacentrofitness`.`piscina` (`IDPiscina`, `IDCentro`, `Locazione`, `TipologiaContratto`, `Dimensione`) VALUES ('p0003', 'cf0001', 'Esterna', 'Gold', '60');
INSERT INTO `aziendacentrofitness`.`piscina` (`IDPiscina`, `IDCentro`, `Locazione`, `TipologiaContratto`, `Dimensione`) VALUES ('p0004', 'cf0001', 'Esterna', 'Silver', '50');
-- ---------------------------------------------------------------------

-- Record Contratto
-- -----------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`contratto` (`IDContratto`, `IDCentro`, `Cliente`, `Consulente`, `TipologiaContratto`, `AccessiSettimanali`, `ImportoMensile`, `DurataMensile`, `DataIscrizione`, `Scopo`) VALUES ('con001', 'cf0001', 'cfc0001', 'd0007', 'Gold', '2', '50', '6', '2002-01-25', 'Dimagrimento');
INSERT INTO `aziendacentrofitness`.`contratto` (`IDContratto`, `IDCentro`, `Cliente`, `Consulente`, `TipologiaContratto`, `AccessiSettimanali`, `ImportoMensile`, `DurataMensile`, `DataIscrizione`, `Scopo`) VALUES ('con002', 'cf0001', 'cfc0002', 'd0007', 'Silver', '1', '20', '9', '2003-06-23', 'Potenziamento Muscolare');
INSERT INTO `aziendacentrofitness`.`contratto` (`IDContratto`, `IDCentro`, `Cliente`, `Consulente`, `TipologiaContratto`, `AccessiSettimanali`, `ImportoMensile`, `DurataMensile`, `DataIscrizione`, `Scopo`) VALUES ('con003', 'cf0001', 'cfc0003', 'd0007', 'Platinum', '3', '65', '3', '2010-08-31', 'Ricreativo');
INSERT INTO `aziendacentrofitness`.`contratto` (`IDContratto`, `IDCentro`, `Cliente`, `Consulente`, `TipologiaContratto`, `ImportoMensile`, `DurataMensile`, `DataIscrizione`, `Scopo`) VALUES ('con004', 'cf0001', 'cfc0004', 'd0007', 'Personalizzato', '100', '3', '2011-09-20', 'Potenziamento Muscolare');
INSERT INTO `aziendacentrofitness`.`contratto` (`IDContratto`, `IDCentro`, `Cliente`, `Consulente`, `TipologiaContratto`, `AccessiSettimanali`, `ImportoMensile`, `DurataMensile`, `DataIscrizione`, `Scopo`) VALUES ('con005', 'cf0001', 'cfc0005', 'd0007', 'Gold', '2', '50', '3', '2012-12-21', 'Ricreativo');
-- -----------------------------------------------------------




-- Record Esercizio
-- --------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0001', 'Addominali', '20');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0002', 'Trazioni', '50');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0003', 'Corsa', '10');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0004', 'Cyclette', '10');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0005', 'Lateral Pulley', '30');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0006', 'Alzate Laterali', '20');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e007', 'Squat', '15');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0008', 'Affondi Laterali', '30');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0009', 'Curl con Manubrio', '40');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0010', 'Flessioni', '35');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0011', 'Push Down ai Cavi', '20');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0012', 'Distensioni a Presa Stretta', '25');
INSERT INTO `aziendacentrofitness`.`esercizio` (`IDEsercizio`, `Nome`, `DispendioEnergeticoMedio`) VALUES ('e0013', 'Dorsali', '35');
-- ------------------------------------------------------------------

-- Record Aerobico
-- ----------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`aerobico` (`IDEsercizioAerobico`, `DurataMinuti`) VALUES ('e0003', '15');
INSERT INTO `aziendacentrofitness`.`aerobico` (`IDEsercizioAerobico`, `DurataMinuti`) VALUES ('e0004', '20');
-- -------------------------------------------------------


-- Record Armadietto
-- -------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0001', 'spo0001', '00000');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0002', 'spo0001', '00001');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0003', 'spo0001', '00002');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0004', 'spo0002', '00003');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0005', 'spo0002', '00004');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0006', 'spo0002', '00005');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0007', 'spo0003', '00006');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0008', 'spo0003', '00007');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm0009', 'spo0003', '00008');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm00010', 'spo0004', '00009');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm00011', 'spo0004', '00010');
INSERT INTO `aziendacentrofitness`.`armadietto` (`IDArmadietto`, `IDSpogliatoio`, `CombinazioneNumerica`) VALUES ('arm00012', 'spo0004', '00011');

-- -----------------------------------------------------------------------


-- Record Spogliatoio
-- ----------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`spogliatoio` (`IDSpogliatoio`, `Capienza`, `PostiDisponibili`, `Posizione`, `Sesso`) VALUES ('spo0001', '50', '50', 'N', 'M');
INSERT INTO `aziendacentrofitness`.`spogliatoio` (`IDSpogliatoio`, `Capienza`, `PostiDisponibili`, `Posizione`, `Sesso`) VALUES ('spo0002', '50', '50', 'S', 'F');
INSERT INTO `aziendacentrofitness`.`spogliatoio` (`IDSpogliatoio`, `Capienza`, `PostiDisponibili`, `Posizione`, `Sesso`) VALUES ('spo0003', '50', '50', 'E', 'M');
INSERT INTO `aziendacentrofitness`.`spogliatoio` (`IDSpogliatoio`, `Capienza`, `PostiDisponibili`, `Posizione`, `Sesso`) VALUES ('spo0004', '50', '50', 'O', 'F');
-- --------------------------------------------------------------------------------

-- Record Sala
-- -------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0001', 'cf0001', 'Cardio Fitness', 'Silver', 'd0009');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0002', 'cf0001', 'Bodybuilding', 'Gold', 'd0010');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0003', 'cf0001', 'Aerobica', 'Platinum', 'd0011');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0004', 'cf0001', 'Corpo Libero', 'Personalizzato', 'd0012');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0005', 'cf0001', 'Cardio Fitness', 'Gold', 'd0010');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0006', 'cf0001', 'Bodybuilding', 'Silver', 'd0009');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0007', 'cf0001', 'Cardio Fitness', 'Platinum', 'd0011');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0008', 'cf0001', 'Cardio Fitness', 'Personalizzato', 'd0012');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0009', 'cf0001', 'Bodybuilding', 'Platinum', 'd0011');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0010', 'cf0001', 'Bodybuilding', 'Personalizzato', 'd0012');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0011', 'cf0001', 'Aerobica', 'Silver', 'd0009');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0012', 'cf0001', 'Aerobica', 'Gold', 'd0010');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0013', 'cf0001', 'Aerobica', 'Personalizzato', 'd0012');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0014', 'cf0001', 'Corpo Libero', 'Silver', 'd0009');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0015', 'cf0001', 'Corpo Libero', 'Gold', 'd0010');
INSERT INTO `aziendacentrofitness`.`sala` (`IDSala`, `IDCentro`, `Nome`, `TipologiaContratto`, `ResponsabileSala`) VALUES ('sal0016', 'cf0001', 'Corpo Libero', 'Platinum', 'd0011');
-- ------------------------------------------------------------------------------

-- Record MisurazioniImpedenziomentriche
-- --------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`misurazioniimpedenziometriche` (`IDMisurazione`, `CodFiscaleCliente`, `DataMisurazione`, `AcquaTotale`, `MassaMagra`, `MassaGrassa`, `Peso`, `Altezza`) VALUES ('mis0001', 'cfc0001', '2010-02-05', '80', '50', '80', '65', '1.70');
INSERT INTO `aziendacentrofitness`.`misurazioniimpedenziometriche` (`IDMisurazione`, `CodFiscaleCliente`, `DataMisurazione`, `AcquaTotale`, `MassaMagra`, `MassaGrassa`, `Peso`, `Altezza`) VALUES ('mis0002', 'cfc0001', '2010-02-15', '80', '50', '20', '80', '1.70');
-- ---------------------------------------------------------------------------------

-- Record Interesse
-- --------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Aerobica');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Yoga');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Bodybuilding');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Corsa');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Calcio');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Kickbox');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Karate');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Pallavolo');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Basket');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Baseball');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Rugby');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Nuoto');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Ciclismo');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Arrampicata Sportiva');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Ginnastica Artistica');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Tennis');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Tennis da Tavolo');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Tuffi');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Atletica Leggera');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Kitesurf');
INSERT INTO `aziendacentrofitness`.`interesse` (`NomeInteresse`) VALUES ('Zumba');
-- ----------------------------------------------------------------------------------------

-- Record Utente
-- -----------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`utente` (`Username`, `IDContratto`, `Password`) VALUES ('Leo95', 'con001', 'ciao1');
INSERT INTO `aziendacentrofitness`.`utente` (`Username`, `IDContratto`, `Password`) VALUES ('erne96', 'con002', 'ciao2');
INSERT INTO `aziendacentrofitness`.`utente` (`Username`, `IDContratto`, `Password`) VALUES ('mari90', 'con003', 'ciao3');
INSERT INTO `aziendacentrofitness`.`utente` (`Username`, `IDContratto`, `Password`) VALUES ('ele89', 'con004', 'ciao4');
INSERT INTO `aziendacentrofitness`.`utente` (`Username`, `IDContratto`, `Password`) VALUES ('pi95', 'con005', 'ciao4');
-- --------------------------------------------------------------------------------------------------------------------------

-- InteressiUtente
-- --------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`interessiutente` (`Username`, `NomeInteresse`) VALUES ('Leo95', 'Calcio');
INSERT INTO `aziendacentrofitness`.`interessiutente` (`Username`, `NomeInteresse`) VALUES ('Leo95', 'Tennis');
INSERT INTO `aziendacentrofitness`.`interessiutente` (`Username`, `NomeInteresse`) VALUES ('ele89', 'Yoga');
INSERT INTO `aziendacentrofitness`.`interessiutente` (`Username`, `NomeInteresse`) VALUES ('ele89', 'Ginnastica Artistica');
INSERT INTO `aziendacentrofitness`.`interessiutente` (`Username`, `NomeInteresse`) VALUES ('mari90', 'Zumba');
INSERT INTO `aziendacentrofitness`.`interessiutente` (`Username`, `NomeInteresse`) VALUES ('erne90', 'Calcio');
INSERT INTO `aziendacentrofitness`.`interessiutente` (`Username`, `NomeInteresse`) VALUES ('erne90', 'Bodybuilding');
-- ------------------------------------------------------------------------------------------------------------------------------------

-- Record FasciMuscolari
-- -----------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Arti Superiori', 'lieve');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Arti Superiori', 'moderato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Arti Superiori', 'elevato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Arti Inferiori', 'lieve');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Arti Inferiori', 'moderato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Arti Inferiori', 'elevato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Schiena', 'lieve');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Schiena', 'moderato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Schiena', 'elevato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Petto', 'lieve');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Petto', 'moderato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Petto', 'elevato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Addome', 'elevato');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Addome', 'lieve');
INSERT INTO `aziendacentrofitness`.`fascimuscolari` (`NomeFasciMuscolari`, `Livello`) VALUES ('Addome', 'moderato');
-- -----------------------------------------------------------------------------------------------------------------------------------

-- Record Potenziamento
-- ------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`potenziamento` (`IDContratto`, `NomeFasciMuscolari`, `Livello`) VALUES ('con002', 'Arti Superiori', 'elevato');
INSERT INTO `aziendacentrofitness`.`potenziamento` (`IDContratto`, `NomeFasciMuscolari`, `Livello`) VALUES ('con002', 'Addome', 'moderato');
INSERT INTO `aziendacentrofitness`.`potenziamento` (`IDContratto`, `NomeFasciMuscolari`, `Livello`) VALUES ('con004', 'Arti Inferiori', 'Elevato');
INSERT INTO `aziendacentrofitness`.`potenziamento` (`IDContratto`, `NomeFasciMuscolari`, `Livello`) VALUES ('con004', 'Schiena', 'lieve');
INSERT INTO `aziendacentrofitness`.`potenziamento` (`IDContratto`, `NomeFasciMuscolari`, `Livello`) VALUES ('con004', 'Arti Superioi', 'moderato');
-- -----------------------------------------------------------------------------------------------------------------------------------------

-- Record Dieta
-- -------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`dieta` (`IDDieta`, `ApportoCalorico`, `NumeroPasti`) VALUES ('dieta1', '2000', '5');
INSERT INTO `aziendacentrofitness`.`dieta` (`IDDieta`, `ApportoCalorico`, `NumeroPasti`) VALUES ('dieta2', '1500', '3');
INSERT INTO `aziendacentrofitness`.`dieta` (`IDDieta`, `ApportoCalorico`, `NumeroPasti`) VALUES ('dieta3', '1900', '4');
INSERT INTO `aziendacentrofitness`.`dieta` (`IDDieta`, `ApportoCalorico`, `NumeroPasti`) VALUES ('dieta4', '2500', '5');
INSERT INTO `aziendacentrofitness`.`dieta` (`IDDieta`, `ApportoCalorico`, `NumeroPasti`) VALUES ('dieta5', '1000', '2');
-- ----------------------------------------------------------------------------------------------------------------------------------


-- Record SchedaAlimentazione
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`schedaalimentazione` (`IDSchedaAlimentazione`, `CodFiscaleCliente`, `IDDieta`, `DataInizio`, `DataFine`, `MedicoScheda`, `Obiettivo`) VALUES ('ali1', 'cfc0001', 'dieta2', '2010-02-02', '2010-04-02', 'med1', 'Dimagrimento');
INSERT INTO `aziendacentrofitness`.`schedaalimentazione` (`IDSchedaAlimentazione`, `CodFiscaleCliente`, `IDDieta`, `DataInizio`, `DataFine`, `MedicoScheda`, `Obiettivo`) VALUES ('ali2', 'cfc0002', 'dieta1', '2011-03-11', '2011-05-29', 'med2', 'Acquisire massa magra');
INSERT INTO `aziendacentrofitness`.`schedaalimentazione` (`IDSchedaAlimentazione`, `CodFiscaleCliente`, `IDDieta`, `DataInizio`, `DataFine`, `MedicoScheda`, `Obiettivo`) VALUES ('ali3', 'cfc0003', 'dieta3', '2012-12-30', '2013-02-28', 'med3', 'Diminuire massa grassa');
INSERT INTO `aziendacentrofitness`.`schedaalimentazione` (`IDSchedaAlimentazione`, `CodFiscaleCliente`, `IDDieta`, `DataInizio`, `DataFine`, `MedicoScheda`, `Obiettivo`) VALUES ('ali4', 'cfc0004', 'dieta4', '2017-04-01', '2017-05-02', 'med4', 'Acquisire massa magra');
INSERT INTO `aziendacentrofitness`.`schedaalimentazione` (`IDSchedaAlimentazione`, `CodFiscaleCliente`, `IDDieta`, `DataInizio`, `DataFine`, `MedicoScheda`, `Obiettivo`) VALUES ('ali5', 'cfc0005', 'dieta5', '2016-03-11', '2016-11-30', 'med5', 'Perdere Peso');
INSERT INTO `aziendacentrofitness`.`schedaalimentazione` (`IDSchedaAlimentazione`, `CodFiscaleCliente`, `IDDieta`, `DataInizio`, `DataFine`, `MedicoScheda`, `Obiettivo`) VALUES ('ali6', 'cfc0006', 'dieta3', '2017-09-22', '2017-12-22', 'med6', 'Perdere Peso');
-- ----------------------------------------------------------------------------------------------------------------------------------------

-- Record Pietanza
-- -------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Pasta al Pomodoro', 'Pasta, Passasto Pomodoro, Basico');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Latte e Biscotti', 'Latte, Biscotti Integrali');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Pollo Arrostito', 'Pollo, Olio, Insalata');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Riso in Bianco', 'Riso, Olio, Parmigiano');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Riso al curry', 'Riso, Olio, Curry, Spezie a piacere');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Cotoletta alla Palermitana', 'Carne Pollo, Pangrattato,');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Pasta al Pesto', 'Pasta Penne, Pesto di basilico');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Carne e contorno', 'Fettina di vitello, Funghi');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Spuntino 1', 'Pancarrè, Marmellata');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Spuntino 2', 'Pancarrè integrale, Fesa di tacchino');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Parmiggiana al forno', 'Melanzana, Olio, Salsa al pomodoro, Basilico');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Bresaola e contorno', 'Bresaola, Morrarella, Olio');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Riso e lenticchie', 'Riso Basmati, Lenticchie ');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('Latte e cereali', 'Latte, Cereali integrali');
INSERT INTO `aziendacentrofitness`.`pietanza` (`NomePietanza`, `ComposizionePietanza`) VALUES ('The e Fette Biscottate', 'Acqua calda, Bustina the verde, Fette Biscottate Integrali');
-- --------------------------------------------------------------------------------------------------------------------------------------


-- Record ComposizioneDieta
-- -------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta1', 'Spuntino1', 'Spuntino Mattino');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta1', 'Spuntino 2', 'Spuntino Pomeridiano');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta1', 'Pasta al Pomodoro', 'Pranzo');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta1', 'Carne e contorno', 'Cena');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta1', 'Latte e Biscotti', 'Colazione');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta2', 'Latte e Biscotti', 'Colazione');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta2', 'Riso e lenticchie', 'Pranzo');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta2', 'Cotoletta alla palermitana', 'Cena');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta3', 'Latte e cereali', 'Colazione');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta3', 'Riso al Curry', 'Pranzo');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta3', 'Spuntuno 2', 'Spuntino Pomeridiano');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta3', 'Vitello e contorno', 'Cena');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta4', 'Spuntino 1', 'Spuntino Mattino');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta4', 'Spuntino 2', 'Spuntino Pomeridiano');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta4', 'The e Fette Biscottate', 'Colazione');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta4', 'Riso in Bianco', 'Pranzo');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta4', 'Bresaola e contorno', 'Cena');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta5', 'Riso e lenticchie', 'Pranzo');
INSERT INTO `aziendacentrofitness`.`composizionedieta` (`IDDieta`, `NomePietanza`, `Pasto`) VALUES ('dieta5', 'Parmiggiana al forno', 'Cena');
-- ----------------------------------------------------------------------------------------------------------------------------------------



-- Record Amico
-- ----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`amico` (`UsernameAmico`, `Username`) VALUES ('mari90', 'Leo95');
INSERT INTO `aziendacentrofitness`.`amico` (`UsernameAmico`, `Username`) VALUES ('ele89', 'Leo95');
INSERT INTO `aziendacentrofitness`.`amico` (`UsernameAmico`, `Username`) VALUES ('erne96', 'Leo95');
-- ------------------------------------------------------------------------------------------------------------------------------


-- Record Cerchia
-- ------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`cerchia` (`NomeCerchia`, `Argomento`) VALUES ('I Love Calcio', 'Calcio');
INSERT INTO `aziendacentrofitness`.`cerchia` (`NomeCerchia`, `Argomento`) VALUES ('I Love Ciclismo', 'Ciclismo');
-- -----------------------------------------------------------------------------------------------------------------------

-- Record Appartenenza
-- ------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`appartenenza` (`NomeCerchia`, `UsernameAmico`, `Username`) VALUES ('I Love Calcio', 'erne90', 'Leo95');
INSERT INTO `aziendacentrofitness`.`appartenenza` (`NomeCerchia`, `UsernameAmico`, `Username`) VALUES ('I Love Ciclismo', 'mari90', 'Leo95');
INSERT INTO `aziendacentrofitness`.`appartenenza` (`NomeCerchia`, `UsernameAmico`, `Username`) VALUES ('I Love Ciclismo', 'ele89', 'Leo95');
-- --------------------------------------------------------------------------------------------------------------------------------------------



-- Record SuggerimentoInserimento
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`suggerimentoinserimento` (`NomeCerchia`, `UsernameAmico`, `Username`) VALUES ('I Love Ciclismo', 'erne90', 'Leo95');
-- -------------------------------------------------------------------------------------------------------------------------------------



-- Record Anaerobico
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0001', 'Addominali1', '15', '20');
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0001', 'Addominali2', '20', '40');
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0001', 'Addominali3', '30', '60');
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0006', 'Alzate Laterali1', '20', '40');
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0006', 'Alzate Laterali2', '25', '60');
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0006', 'Alzate Laterali3', '30', '90');
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0009', 'Curl1', '10', '30');
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0009', 'Curl2', '12', '30');
INSERT INTO `aziendacentrofitness`.`anaerobico` (`IDEsercizioAnaerobico`, `NomeAnaerobico`, `NumEsecuzioni`, `TempoDiRecupero`) VALUES ('e0009', 'Curl3', '14', '30');
-- -------------------------------------------------------------------------------------------------------------------------------------




-- Record Attrezzo
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`attrezzo` (`IDAttrezzo`, `NomeAttrezzo`, `IDSala`, `ConsumoEnergetico`, `Tipologia`, `LivelloUsura`) VALUES ('attr1', 'Tapis Roulant', 'sal0005', '20', 'Cardio Fitness', '0.1');
INSERT INTO `aziendacentrofitness`.`attrezzo` (`IDAttrezzo`, `NomeAttrezzo`, `IDSala`, `ConsumoEnergetico`, `Tipologia`, `LivelloUsura`) VALUES ('attr2', 'Tapis Roulant', 'sal0005', '20', 'Cardio Fitness', '0');
INSERT INTO `aziendacentrofitness`.`attrezzo` (`IDAttrezzo`, `NomeAttrezzo`, `IDSala`, `ConsumoEnergetico`, `Tipologia`, `LivelloUsura`) VALUES ('attr3', 'Tapis Roulant', 'sal0005', '25', 'Cardio Fitness', '0');
INSERT INTO `aziendacentrofitness`.`attrezzo` (`IDAttrezzo`, `NomeAttrezzo`, `IDSala`, `ConsumoEnergetico`, `Tipologia`, `LivelloUsura`) VALUES ('attr4', 'Tapis Roulant', 'sal0005', '30', 'Cardio Fitness', '0');
INSERT INTO `aziendacentrofitness`.`attrezzo` (`IDAttrezzo`, `NomeAttrezzo`, `IDSala`, `ConsumoEnergetico`, `Tipologia`, `LivelloUsura`) VALUES ('attr5', 'Pectoral Machine', 'sal0002', '30', 'Pesistica', '0');
INSERT INTO `aziendacentrofitness`.`attrezzo` (`IDAttrezzo`, `NomeAttrezzo`, `IDSala`, `ConsumoEnergetico`, `Tipologia`, `LivelloUsura`) VALUES ('attr6', 'Leg Machne', 'sal002', '20', 'Pesistica', '0');
INSERT INTO `aziendacentrofitness`.`attrezzo` (`IDAttrezzo`, `NomeAttrezzo`, `IDSala`, `ConsumoEnergetico`, `Tipologia`, `LivelloUsura`) VALUES ('attr7', 'Manubrio Regolabile', 'sal002', '10', 'Pesistica', '0');
-- -------------------------------------------------------------------------------------------------------------------------------------




-- Record CalendarioCentroFitness
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`calendariocentrofitness` (`IDCentro`, `NomeGiorno`, `OrarioApertura`, `OrarioChiusura`) VALUES ('cf0001', 'Lunedi', '15:00', '22:00');
INSERT INTO `aziendacentrofitness`.`calendariocentrofitness` (`IDCentro`, `NomeGiorno`, `OrarioApertura`, `OrarioChiusura`) VALUES ('cf0001', 'Martedi', '9:00', '22:00');
INSERT INTO `aziendacentrofitness`.`calendariocentrofitness` (`IDCentro`, `NomeGiorno`, `OrarioApertura`, `OrarioChiusura`) VALUES ('cf0001', 'Mercoledi', '9:00', '21:00');
INSERT INTO `aziendacentrofitness`.`calendariocentrofitness` (`IDCentro`, `NomeGiorno`, `OrarioApertura`, `OrarioChiusura`) VALUES ('cf0001', 'Giovedi', '10:00', '21:00');
INSERT INTO `aziendacentrofitness`.`calendariocentrofitness` (`IDCentro`, `NomeGiorno`, `OrarioApertura`, `OrarioChiusura`) VALUES ('cf0001', 'Venerdi', '9:00', '22:00');
INSERT INTO `aziendacentrofitness`.`calendariocentrofitness` (`IDCentro`, `NomeGiorno`, `OrarioApertura`, `OrarioChiusura`) VALUES ('cf0001', 'Sabato', '9:00', '13:00');
INSERT INTO `aziendacentrofitness`.`attrezzo` (`IDAttrezzo`, `NomeAttrezzo`, `IDSala`, `ConsumoEnergetico`, `Tipologia`, `LivelloUsura`) VALUES ('attr7', 'Manubrio', 'sal002', '10', 'Pesistica', '0');
-- -------------------------------------------------------------------------------------------------------------------------------------




-- Record Corso
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`corso` (`IDCorso`, `NomeDisciplina`, `IstruttoreCorso`, `DataInizio`, `DataFine`, `NumeroMaxPartecipanti`, `Livello`) VALUES ('corso1', 'Yoga', 'dip1', '2017-02-02', '2017-05-02', '50', 'Principiante');
INSERT INTO `aziendacentrofitness`.`corso` (`IDCorso`, `NomeDisciplina`, `IstruttoreCorso`, `DataInizio`, `DataFine`, `NumeroMaxPartecipanti`, `Livello`) VALUES ('corso2', 'Zumba', 'dip2', '2017-03-05', '2017-09-06', '60', 'Principiante');
INSERT INTO `aziendacentrofitness`.`corso` (`IDCorso`, `NomeDisciplina`, `IstruttoreCorso`, `DataInizio`, `DataFine`, `NumeroMaxPartecipanti`, `Livello`) VALUES ('corso3', 'Nuoto ', 'dip3', '2017-05-10', '2017-10-10', '50', 'Intermedio');
INSERT INTO `aziendacentrofitness`.`corso` (`IDCorso`, `NomeDisciplina`, `IstruttoreCorso`, `DataInizio`, `DataFine`, `NumeroMaxPartecipanti`, `Livello`) VALUES ('corso4', 'Crossfir', 'dip4', '2017-06-02', '2017-11-02', '30', 'Avanzato');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record CalendarioCorso
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`calendariocorso` (`IDCalendarioCorso`, `IDCorso`, `IDCentro`, `GiornoSettimana`, `OrarioInizio`, `OrarioFine`) VALUES ('calcorso1', 'corso1', 'cf0001', 'Martedi', '15:00', '17:00');
INSERT INTO `aziendacentrofitness`.`calendariocorso` (`IDCalendarioCorso`, `IDCorso`, `IDCentro`, `GiornoSettimana`, `OrarioInizio`, `OrarioFine`) VALUES ('calcorso2', 'corso1', 'cf0001', 'Giovedi', '18:00', '20:00');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record Link
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`link` (`URL`) VALUES ('URL1');
INSERT INTO `aziendacentrofitness`.`link` (`URL`) VALUES ('URL2');
INSERT INTO `aziendacentrofitness`.`link` (`URL`) VALUES ('URL3');
INSERT INTO `aziendacentrofitness`.`link` (`URL`) VALUES ('URL4');
INSERT INTO `aziendacentrofitness`.`link` (`URL`) VALUES ('URL5');
-- -------------------------------------------------------------------------------------------------------------------------------------



-- Record Thread
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`thread` (`IDThread`, `Titolo`) VALUES ('Thread1', 'Benvenuto');
INSERT INTO `aziendacentrofitness`.`thread` (`IDThread`, `Titolo`) VALUES ('Thread2', 'Potenza Muscolare');
INSERT INTO `aziendacentrofitness`.`thread` (`IDThread`, `Titolo`) VALUES ('Thread3', 'Esecuzione Esercizi');
INSERT INTO `aziendacentrofitness`.`thread` (`IDThread`, `Titolo`) VALUES ('Thread4', 'Sfida1');
-- -------------------------------------------------------------------------------------------------------------------------------------







-- Record Post
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`post` (`IDPost`, `Testo`, `Username`, `AreaForum`, `ThreadPost`) VALUES ('post1', 'Ciao sono felice', 'Leo95', 'Palestra', 'Thread1');
INSERT INTO `aziendacentrofitness`.`post` (`IDPost`, `Testo`, `Username`, `AreaForum`, `ThreadPost`) VALUES ('post2', 'Finalmente ho raggiunto il mio obiettivo', 'Leo95', 'Felicita', 'Thread2');
INSERT INTO `aziendacentrofitness`.`post` (`IDPost`, `Testo`, `Username`, `Risposta`, `AreaForum`, `ThreadPost`) VALUES ('post3', 'Come si utilizza l\'attrezzo Pectoral Machine?', 'Leo95', 'post6', 'Esercizio', 'Thread3');
INSERT INTO `aziendacentrofitness`.`post` (`IDPost`, `Testo`, `Username`, `AreaForum`, `ThreadPost`) VALUES ('post4', 'Bello essere qui', 'Leo95', 'Frasi', 'Thread1');
INSERT INTO `aziendacentrofitness`.`post` (`IDPost`, `Testo`, `Username`, `AreaForum`, `ThreadPost`) VALUES ('post6', 'Basta leggere le istruzioni', 'ele89', 'Esercizio', 'Thread3');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record Voto
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`voto` (`IDVoto`, `Risposta`, `Stelle`) VALUES ('voto1', 'post6', '5');
-- -------------------------------------------------------------------------------------------------------------------------------------




-- Record LinkPost
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`linkpost` (`URL`, `IDPost`) VALUES ('URL1', 'post6');
INSERT INTO `aziendacentrofitness`.`linkpost` (`URL`, `IDPost`) VALUES ('URL2', 'post2');
-- -------------------------------------------------------------------------------------------------------------------------------------




-- Record PianoPagamento
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`pianopagamento` (`IDPagamento`, `IDContratto`, `TipologiaPagamento`) VALUES ('pag001', 'con001', 'Intero');
INSERT INTO `aziendacentrofitness`.`pianopagamento` (`IDPagamento`, `IDContratto`, `TipologiaPagamento`) VALUES ('pag002', 'con002', 'Intero');
INSERT INTO `aziendacentrofitness`.`pianopagamento` (`IDPagamento`, `IDContratto`, `TipologiaPagamento`) VALUES ('pag003', 'con003', 'Intero');
INSERT INTO `aziendacentrofitness`.`pianopagamento` (`IDPagamento`, `IDContratto`, `TipologiaPagamento`) VALUES ('pag004', 'con004', 'Rateizzato');
-- -------------------------------------------------------------------------------------------------------------------------------------




-- Record Rata
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`rata` (`IDRata`, `IDPagamento`, `ImportoRata`, `IstitutoFinanziario`, `TassoInteresse`, `DataScadenza`, `Stato`) VALUES ('rata1', 'pag004', '60', 'Credem', '20', '2018-03-05', 'Non dovuto');
INSERT INTO `aziendacentrofitness`.`rata` (`IDRata`, `IDPagamento`, `ImportoRata`, `IstitutoFinanziario`, `TassoInteresse`, `DataScadenza`, `Stato`) VALUES ('rata2', 'pag004', '60', 'Credem', '20', '2008-04-03', 'Non dovuto');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record SchedaAllenamento
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`schedaallenamento` (`IDSchedaAllenamento`, `CodFiscaleCliente`, `TutorScheda`, `DataInizio`, `DataFine`) VALUES ('sall1', 'cfc0001', 'dip1', '2018-01-06', '2018-02-20');
INSERT INTO `aziendacentrofitness`.`schedaallenamento` (`IDSchedaAllenamento`, `CodFiscaleCliente`, `TutorScheda`, `DataInizio`, `DataFine`) VALUES ('sall2', 'cfc0002', 'dip2', '2017-05-06', '2017-09-30');
-- -------------------------------------------------------------------------------------------------------------------------------------





-- Record ComposizioneScheda
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`composizioneallenamento` (`IDEsercizio`, `IDSchedaAllenamento`) VALUES ('e0001', 'sall1');
INSERT INTO `aziendacentrofitness`.`composizioneallenamento` (`IDEsercizio`, `IDSchedaAllenamento`) VALUES ('e0002', 'sall1');
INSERT INTO `aziendacentrofitness`.`composizioneallenamento` (`IDEsercizio`, `IDSchedaAllenamento`) VALUES ('e0003', 'sall1');
INSERT INTO `aziendacentrofitness`.`composizioneallenamento` (`IDEsercizio`, `IDSchedaAllenamento`) VALUES ('e0004', 'sall2');
INSERT INTO `aziendacentrofitness`.`composizioneallenamento` (`IDEsercizio`, `IDSchedaAllenamento`) VALUES ('e0009', 'sall2');
INSERT INTO `aziendacentrofitness`.`composizioneallenamento` (`IDEsercizio`, `IDSchedaAllenamento`) VALUES ('e0011', 'sall2');
-- -------------------------------------------------------------------------------------------------------------------------------------




-- Record CongifurazioneUtilizzo
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`configurazioneutilizzo` (`IDConfigurazione`, `IDEsercizio`, `IDAttrezzo`, `NomeRegolazione`, `Intensita`, `IstruzioneEsatta`) VALUES ('conf1', 'e0009', 'attr7', 'Peso', '4', '1');
INSERT INTO `aziendacentrofitness`.`configurazioneutilizzo` (`IDConfigurazione`, `IDEsercizio`, `IDAttrezzo`, `NomeRegolazione`, `Intensita`, `IstruzioneEsatta`) VALUES ('conf2', 'e0009', 'attr7', 'Peso', '6', '1');
INSERT INTO `aziendacentrofitness`.`configurazioneutilizzo` (`IDConfigurazione`, `IDEsercizio`, `IDAttrezzo`, `NomeRegolazione`, `Intensita`, `IstruzioneEsatta`) VALUES ('conf3', 'e0009', 'attr7', 'Peso', '8', '1');
INSERT INTO `aziendacentrofitness`.`configurazioneutilizzo` (`IDConfigurazione`, `IDEsercizio`, `IDAttrezzo`, `NomeRegolazione`, `Intensita`, `IstruzioneEsatta`) VALUES ('conf4', 'e0009', 'attr7', 'Peso', '3', '0');
INSERT INTO `aziendacentrofitness`.`configurazioneutilizzo` (`IDConfigurazione`, `IDEsercizio`, `IDAttrezzo`, `NomeRegolazione`, `Intensita`, `IstruzioneEsatta`) VALUES ('conf5', 'e0009', 'attr7', 'Peso', '6', '0');
INSERT INTO `aziendacentrofitness`.`configurazioneutilizzo` (`IDConfigurazione`, `IDEsercizio`, `IDAttrezzo`, `NomeRegolazione`, `Intensita`, `IstruzioneEsatta`) VALUES ('conf6', 'e0009', 'attr7', 'Peso', '7', '0');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record MonitoraggioSmart
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`monitoraggiosmart` (`IDMonitoraggio`, `IDEsercizio`, `IDSchedaAllenamento`, `IstanteInizio`, `IstanteFine`, `DataMonitoraggio`) VALUES ('mon001', 'e0003', 'sall1', '15:00', '15:10', '2017-02-03');
INSERT INTO `aziendacentrofitness`.`monitoraggiosmart` (`IDMonitoraggio`, `IDEsercizio`, `IDSchedaAllenamento`, `IstanteInizio`, `IstanteFine`, `DataMonitoraggio`) VALUES ('mon002', 'e0009', 'sal2', '16:00', '16:20', '2018-01-11');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record DatiRipetizione
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`datiripetizione` (`IDRipetizione`, `NomeRipetizione`, `NumeroEsecuzioni`, `TempoRecupero`) VALUES ('ripc1', 'curl1', '10', '42');
INSERT INTO `aziendacentrofitness`.`datiripetizione` (`IDRipetizione`, `NomeRipetizione`, `NumeroEsecuzioni`, `TempoRecupero`) VALUES ('ripc2', 'curl2', '12', '50');
INSERT INTO `aziendacentrofitness`.`datiripetizione` (`IDRipetizione`, `NomeRipetizione`, `NumeroEsecuzioni`, `TempoRecupero`) VALUES ('ripc3', 'curl3', '12', '100');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record MonitoraggioRipetizione
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`monitoraggioripetizione` (`IDMonitoraggio`, `IDRipetizione`) VALUES ('man002', 'ripc1');
INSERT INTO `aziendacentrofitness`.`monitoraggioripetizione` (`IDMonitoraggio`, `IDRipetizione`) VALUES ('man002', 'ripc2');
INSERT INTO `aziendacentrofitness`.`monitoraggioripetizione` (`IDMonitoraggio`, `IDRipetizione`) VALUES ('man002', 'ripc3');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record ConfigurazioneRipetizione
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`configurazioneripetizione` (`EsercizioAnaerobico`, `IDConfigurazione`, `Nome`) VALUES ('e0009', 'conf1', 'Curl1');
INSERT INTO `aziendacentrofitness`.`configurazioneripetizione` (`EsercizioAnaerobico`, `IDConfigurazione`, `Nome`) VALUES ('e0009', 'conf2', 'Curl2');
INSERT INTO `aziendacentrofitness`.`configurazioneripetizione` (`EsercizioAnaerobico`, `IDConfigurazione`, `Nome`) VALUES ('e0009', 'conf3', 'Curl3');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record ConfigurazioneCliente
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`configurazionecliente` (`IDMonitoraggio`, `IDConfigurazione`) VALUES ('mon002', ' conf4');
INSERT INTO `aziendacentrofitness`.`configurazionecliente` (`IDMonitoraggio`, `IDConfigurazione`) VALUES ('mon002', 'conf5');
INSERT INTO `aziendacentrofitness`.`configurazionecliente` (`IDMonitoraggio`, `IDConfigurazione`) VALUES ('mon002', 'conf6');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record AttrezzoUtilizzato
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`attrezzoutilizzato` (`IDAttrezzo`, `IDMonitoraggio`) VALUES ('mon002', 'attr7');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record CorsoDisponibile
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`corsodisponibile` (`IDCorso`, `IDContratto`) VALUES ('corso2', 'con001');
INSERT INTO `aziendacentrofitness`.`corsodisponibile` (`IDCorso`, `IDContratto`) VALUES ('corso1', 'con001');
INSERT INTO `aziendacentrofitness`.`corsodisponibile` (`IDCorso`, `IDContratto`) VALUES ('corso3', 'con004');
INSERT INTO `aziendacentrofitness`.`corsodisponibile` (`IDCorso`, `IDContratto`) VALUES ('corso4', 'con004');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record CorsoFrequentato
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`corsofrequentato` (`IDCorso`, `CodFiscaleCliente`) VALUES ('corso2', 'cfc0001');
INSERT INTO `aziendacentrofitness`.`corsofrequentato` (`IDCorso`, `CodFiscaleCliente`) VALUES ('corso4', 'cfc0004');
-- ---------------------------------------------------------------------------------------------------------------- --------------------


-- Record CorsoInPiscina
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`corsoinpiscina` (`IDCorso`, `IDPiscina`) VALUES ('Corso3', 'p0004');
-- -------------------------------------------------------------------------------------------------------------------------------------


-- Record CorsoInSala
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`corsoinsala` (`IDCorso`, `IDSala`) VALUES ('corso1', 'sal0012');
INSERT INTO `aziendacentrofitness`.`corsoinsala` (`IDCorso`, `IDSala`) VALUES ('corso2', 'sal0011');
-- -------------------------------------------------------------------------------------------------------------------------------------
-- Record OrarioDiLavoro
-- -------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`orariodilavoro` (`IDCentro`, `CodFiscaleDip`, `NomeGiornoLavoro`, `attivita`, `OrarioInizio`, `OrarioFine`) VALUES ('cf0001', 'dip1', 'Martedi', 'Istruttore', '15:00', '17:00');
INSERT INTO `aziendacentrofitness`.`orariodilavoro` (`IDCentro`, `CodFiscaleDip`, `NomeGiornoLavoro`, `attivita`, `OrarioInizio`, `OrarioFine`) VALUES ('cf0001', 'dip1', 'Giovedi', 'Istruttore', '18:00', '20:00');
INSERT INTO `aziendacentrofitness`.`orariodilavoro` (`IDCentro`, `CodFiscaleDip`, `NomeGiornoLavoro`, `attivita`, `OrarioInizio`, `OrarioFine`) VALUES ('cf0001', 'dip2', 'Lunedi', 'Tutor', '9:00', '13:00');
INSERT INTO `aziendacentrofitness`.`orariodilavoro` (`IDCentro`, `CodFiscaleDip`, `NomeGiornoLavoro`, `attivita`, `OrarioInizio`, `OrarioFine`) VALUES ('cf0001', 'dip3', 'Martedi', 'Tutor', '15:00', '20:00');
-- ------------------------------------------------------------------------------------------------------------------------------------------

-- Record RichistaAmicizia
-- ----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`richiestaamicizia` (`IDRichiesta`, `Username`, `UsernameDestinatario`, `StatoRichiesta`) VALUES ('rich1', 'Leo95', 'pi95', 'In sospeso');
-- ---------------------------------------------------------------------------------------------------------------------------------

-- Record Sfida
-- --------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`sfida` (`Proponente`, `DataInizioSfida`, `DataLancio`, `DataScadenza`, `Scopo`, `ThreadSfida`, `AllenamentoSfida`, `AlimentazioneSfida`, `Vincitore`) VALUES ('Leo95', '2017-03-03', '2017-02-03', '2017-03-18', '10 km in 20 minuti', 'Thread5', 'sall1', 'ali5', 'erne90');
-- ---------------------------------------------------------------------------------------------------------------------------

--
-- ------------------------------------------------------------------------------------------------------------------------------
INSERT INTO `aziendacentrofitness`.`partecipante` (`UsernameAmico`, `Proponente`, `DataInizioSfida`) VALUES ('ele89', 'Leo95', '2017-03-03');
INSERT INTO `aziendacentrofitness`.`partecipante` (`UsernameAmico`, `Proponente`, `DataInizioSfida`) VALUES ('erne90', 'Leo95', '2017-03-03');
-- ----------------------------------------------------------------------------------------------------------------------------------
