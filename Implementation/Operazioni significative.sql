USE aziendacentrofitness;

-- -------------------------------
-- Operazione 1
-- -------------------------------
DROP PROCEDURE IF EXISTS ModificaRata;

DELIMITER $$

CREATE PROCEDURE ModificaRata (IN codice_contratto VARCHAR (45))
BEGIN 
	DECLARE ratatarget VARCHAR (45) DEFAULT NULL;
    SET ratatarget =(
					SELECT R.IDRata
					FROM contratto C 
						 INNER JOIN 
                         pianopagamento P ON C.IDContratto = P.IDContratto
						 INNER JOIN rata R ON P.IDPagamento = R.IDPagamento
					WHERE C.IDContratto = codice_contratto 
						  AND R.DataScadenza < current_date()
						  AND R.Stato = 'non ancora dovuto'
					);
                    
	IF (ratatarget IS NOT NULL) THEN
		UPDATE rata L
		SET L.stato = 'scaduto'
        WHERE L.IDRata = ratatarget;
	ELSE
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Non ci sono rate scadute o contratto non prevede rateizzazione';
	END IF;
END $$

DELIMITER ;

-- ------------------------------- 
-- Operazione 2
-- ------------------------------- 

DROP PROCEDURE IF EXISTS InserimentoSchedaAllenamento;

DELIMITER $$

CREATE PROCEDURE InserimentoSchedaAllenamento (IN codice_cliente VARCHAR (45), IN codice_scheda VARCHAR (45), IN tutor_scheda VARCHAR (45),
											   IN data_inizio DATE, IN data_fine DATE)
BEGIN
 
    DECLARE conta INTEGER DEFAULT 0;
    
    SET conta = (
				 SELECT COUNT(*)
                 FROM schedaallenamento A
                 WHERE A.CodFiscaleCliente = codice_cliente
				  );
	IF (conta > 0) THEN 
			INSERT INTO AllenamentoPassato
				  SELECT S.IDSchedaAllenamento AS IDSchedaAllenamento,
					     S.CodFiscaleCliente AS CodFiscaleCliente
				  FROM SchedaAllenamento S
				  WHERE S.CodfiscaleCliente = codice_cliente
						AND S.DataFine = ( SELECT MAX(S1.DataFine)
										   FROM schedaallenamento S1
									       WHERE S1.CodFiscaleCliente = codice_cliente
									);
	END IF;
				  
    INSERT INTO SchedaAllenamento(IDSchedaAllenamento, CodFiscaleCliente, TutorScheda, DataInizio, DataFine)
	VALUES(codice_scheda, codice_cliente, tutor_scheda, data_inizio, data_fine);

END $$

DELIMITER ;

-- -------------------------------
-- Operazione 3
-- -------------------------------

DROP PROCEDURE IF EXISTS InserimentoPotenziamento;

DELIMITER $$

CREATE PROCEDURE InserimentoPotenziamento (IN codice_contratto VARCHAR(45), IN codice_cliente VARCHAR (45), IN codice_consulente VARCHAR (45),
										   IN codice_centro VARCHAR (45), IN tipo_contratto VARCHAR (45), IN accessi_settimana INT, IN importo_mese INT,
                                           IN durata_mensile INT, IN data_iscrizione DATE, IN scopo_potenziamento VARCHAR (45), IN nome_muscolo VARCHAR (45),
                                           IN livello_pot VARCHAR (45))
BEGIN
	
	DECLARE liv VARCHAR (45) DEFAULT NULL;
    DECLARE mus VARCHAR (45) DEFAULT NULL;

	INSERT INTO Contratto(IDContratto, IDCentro, Cliente, Consulente, TipologiaContratto, AccessiSettimanali, ImportoMensile, DurataMensile, DataIscrizione, Scopo)
	VALUES(codice_contratto, codice_centro, codice_cliente, codice_consulente, tipo_contratto, accessi_settimana, importo_mese, durata_mensile, data_iscirizione, scopo_potenziamento);

    IF (scopo_potenziamento = 'Potenziamento Muscolare') THEN
		SET liv = ( SELECT DISTINCT Livello
					FROM FasciMuscolari
					WHERE Livello = livello_pot
					);
		SET mus = ( SELECT DISTINCT NomeFasciMuscolari
					FROM FasciMuscolari
					WHERE NomeFasciMuscolari = nome_muscolo
					);
		IF (liv IS NULL OR mus IS null) THEN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Errore FascioMuscolare o Livello non corrispondono';
		ELSE
			INSERT INTO Potenziamento(IDContratto, NomeFasciMuscolari, Livello)
			VALUES (codice_contratto, mus, liv);
		END IF;
	END IF;
END $$

DELIMITER ;

-- -------------------------------
-- Operazione 4
-- -------------------------------
DROP PROCEDURE IF EXISTS InserimentoVisita;

DELIMITER $$
CREATE PROCEDURE InserimentoVisita (IN codice_cliente VARCHAR(45), IN codice_misurazione VARCHAR (45), IN data_mis DATE, IN acqua DOUBLE, 
									IN massa_grassa DOUBLE, IN massa_magra DOUBLE, IN peso INT, IN altezza DOUBLE)
BEGIN
	INSERT INTO MisurazioniImpendenziomentriche
    VALUES(codice_misurazione, codice_cliente, data_mis, acqua, massa_magra, massa_grassa, peso, altezza);
END $$
DELIMITER ;




-- -------------------------------
-- Operazione 5
-- -------------------------------
DROP PROCEDURE IF EXISTS AttrezzoUsurato;
DELIMITER $$
CREATE PROCEDURE AttrezzoUsurato (IN _attrezzo VARCHAR (45), OUT risposta_ VARCHAR (45))
BEGIN

	SELECT IF(A.LivelloUsura = 100, 'SI', 'NO') INTO risposta_
	FROM attrezzo A
    WHERE A.IDAttrezzo = _attrezzo;
END $$
DELIMITER ;


-- -------------------------------
-- Operazione 6
-- -------------------------------

DROP PROCEDURE IF EXISTS PostDiUnThread;
DELIMITER $$

CREATE PROCEDURE PostDiUnThread(IN thread_codice VARCHAR(45))
BEGIN
  SELECT *
  FROM post
  WHERE ThreadPost = thread_codice;
END $$

DELIMITER ;


-- -------------------------------
-- Operazione 7
-- -------------------------------
DROP PROCEDURE IF EXISTS ControlloRipetizioni;
DELIMITER $$

CREATE PROCEDURE ControlloRipetizioni (IN codice_cliente VARCHAR(45), IN data_rip DATE, OUT numero_ripetizioni INT)
BEGIN
	DECLARE scheda VARCHAR (100) DEFAULT 0;
    DECLARE es VARCHAR (100) DEFAULT 0;
    SET scheda =(
				 SELECT S.IDSchedaAllenamento
				 FROM cliente C
					  INNER JOIN
					  schedaallenamento S ON C.CodFiscaleCliente = S.CodFiscaleCliente
				 WHERE C.CodFiscaleCliente = codice_cliente
					   AND S.DataFine = (
										 SELECT MAX(S1.DataFine)
										 FROM schedaallenamento S1
										 WHERE S1.CodFiscaleCliente = codice_cliente
										)
				);
    
    SET es = (
      SELECT A.IDEsercizio
      FROM schedaallenamento S 
		   INNER JOIN 
           cliente C ON C.CodFiscaleCliente = S.CodFiscaleCliente
		   INNER JOIN 
           composizioneallenamento P ON P.IDSchedaAllenamento = S.IDSchedaAllenamento
           INNER JOIN
           esercizio E ON E.IDEsercizio = P.IDEsercizio
           INNER JOIN 
           anaerobico A ON A.IDEsercizio = E.IDEsercizio
	  WHERE C.CodFiscaleCliente = codice_cliente
			AND
            S.IDSchedaAllenamento = scheda
			AND
            E.DispendioEnergeticoMedio = ( SELECT MAX(E.DispendioEnergeticoMedio)
										   FROM schedaallenamento S1
												INNER JOIN 
                                                composizioneallenamento P1 ON P1.IDSchedaAllenamento = S1.IDSchedaAllenamento
												INNER JOIN
                                                esercizio E1 ON E1.IDEsercizio = P1.IDEsercizio
												INNER JOIN 
                                                anaerobico A1 ON A1.IDEsercizio = E1.IDEsercizio
										   WHERE S1.IDSchedaAllenamento = scheda
                                                )
				LIMIT 1);
      
      SELECT COUNT(R.IDRipetizione) INTO numero_ripetizioni
      FROM monitoraggiosmart S
		   INNER JOIN 
           monitoraggioripetizione R ON S.IDMonitoraggio = R.IDMonitoraggio
      WHERE S.IDEsercizio = es
			AND 
            S.IDSchedaAllenamento = scheda
            AND 
            D.DataMonitoraggio = data_rip;
END $$

DELIMITER ;

-- -------------------------------
-- Operazione 8
-- -------------------------------
DROP PROCEDURE IF EXISTS TrovarePosti;
DELIMITER $$
CREATE PROCEDURE TrovarePosti (IN _accesso VARCHAR(45), OUT posti_ INT)
BEGIN

		SELECT IF(S.PostiDisponibili = 0, 0, S.PostiDisponibili - 1) INTO posti_ 
        FROM accesso A 
			 INNER JOIN 
             armadietto M ON A.IDArmadietto = M.IDArmadietto
			 INNER JOIN 
             spogliatoio S ON S.IDSpogliatoio = M.IDSpogliatoio
		WHERE A.IDAccesso = _accesso;
END $$
DELIMITER ; 