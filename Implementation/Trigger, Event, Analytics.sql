USE aziendacentrofitness;

/************************************************************************************************************/
DROP TRIGGER IF EXISTS Entita_Stato_Visita_Cliente;

DELIMITER $$
CREATE TRIGGER Entita_Stato_Visita_Cliente
BEFORE INSERT ON misurazioniimpedenziometriche
FOR EACH ROW

BEGIN
    
	DECLARE rangecliente DOUBLE DEFAULT 0;
    
    SET rangecliente = ((NEW.Peso * (NEW.MassaGrassa + NEW.MassaMagra))/(NEW.Altezza * NEW.altezza * NEW.AcquaTotale) );
    
    CASE
		WHEN (rangecliente <= 16.5) THEN
			SET NEW.entita = 'Grave';
            SET NEW.statocliente = 'Sottopeso III grado';
		WHEN (rangecliente <= 16.5 AND rangecliente >= 16.6) THEN
			SET NEW.entita = 'Medio';
            SET NEW.statocliente = 'Sottopeso II grado';
		WHEN (rangecliente <= 18.4 AND rangecliente >= 17.6) THEN
			SET NEW.entita = 'Lieve';
            SET NEW.statocliente = 'Sottopeso I grado';
		WHEN (rangecliente <= 20.6 AND rangecliente >= 18.5) THEN
			SET NEW.entita = 'Grave';
            SET NEW.statocliente = 'NormoPeso III grado';
		WHEN (rangecliente <= 22.8 AND rangecliente >= 20.7) THEN
			SET NEW.entita = 'Medio';
            SET NEW.statocliente = 'NormoPeso II grado';
		WHEN (rangecliente <= 24.9 AND rangecliente >= 22.9) THEN
			SET NEW.entita = 'Lieve';
            SET NEW.statocliente = 'NormoPeso I grado';
		WHEN (rangecliente <= 32 AND rangecliente >= 25) THEN
			SET NEW.entita = 'Lieve';
            SET NEW.statocliente = 'Sovrappeso I grado';
		WHEN (rangecliente <= 40 AND rangecliente >= 32.1) THEN
			SET NEW.entita = 'Medio';
            SET NEW.statocliente = 'Sovrappeso II grado';
		WHEN (rangecliente > 40) THEN
			SET NEW.entita = 'Grave';
            SET NEW.statocliente = 'Sovrappeso III grado';
	END CASE;
 END $$
DELIMITER;


/**************************************************************************************************************************************/

DROP TRIGGER IF EXISTS Accesso_Piscina;

DELIMITER $$ 

CREATE TRIGGER Accesso_Piscina
AFTER INSERT ON contratto
FOR EACH ROW

BEGIN
	
    IF (NEW.ImportoMensile = 30 AND NEW.TipologiaContratto = 'Silver') then
		INSERT INTO accessopiscina
			SELECT P.IDPiscina AS IDPiscina, NEW.IDContratto AS IDContratto,  2 AS NumeroAccessi
            FROM piscina P 
            WHERE P.IDCentro = NEW.IDCentro
				  AND P.TipologiaContratto = 'Silver';
                  
	ELSEIF (NEW.ImportoMensile = 50 AND NEW.TipologiaContratto = 'Gold') THEN
		INSERT INTO accessopiscina
			SELECT P.IDPiscina AS IDPiscina, NEW.IDContratto AS IDContratto,  6 AS NumeroAccessi
            FROM piscina P 
            WHERE P.IDCentro = NEW.IDCentro
				  AND (P.TipologiaContratto = 'Gold'
					   OR
                       P.TipologiaContratto = 'Silver');
                       
	ELSEIF (NEW.ImportoMensile = 55 AND NEW.TipologiaContratto = 'Gold') THEN
		INSERT INTO accessopiscina
			SELECT P.IDPiscina AS IDPiscina, NEW.IDContratto AS IDContratto,  8 AS NumeroAccessi
            FROM piscina P 
            WHERE P.IDCentro = NEW.IDCentro
				  AND (P.TipologiaContratto = 'Gold'
					   OR 
                       P.TipologiaContratto = 'Silver');
                       
	ELSEIF (NEW.ImportoMensile = 65 AND NEW.TipologiaContratto = 'Platinum') THEN
		INSERT INTO accessopiscina
			SELECT P.IDPiscina AS IDPiscina, NEW.IDContratto AS IDContratto,  10 AS NumeroAccessi
            FROM piscina P 
            WHERE P.IDCentro = NEW.IDCentro
				  AND (P.TipologiaContratto = 'Platinum'
                       OR 
                       P.TipologiaContratto = 'Gold'
					   OR
                       P.TipologiaContratto = 'Silver');
                       
	ELSEIF (NEW.ImportoMensile = 70 AND NEW.TipologiaContratto = 'Platinum') THEN
		INSERT INTO accessopiscina
			SELECT P.IDPiscina AS IDPiscina, NEW.IDContratto AS IDContratto, 12 AS NumeroAccessi
            FROM piscina P 
            WHERE P.IDCentro = NEW.IDCentro
				  AND (P.TipologiaContratto = 'Platinum'
					   OR
                       P.TipologiaContratto = 'Gold'
					   OR
                       P.TipologiaContratto = 'Silver');
                       
	ELSEIF (NEW.ImportoMensile = 100 and new.TipologiaContratto = 'Personalizzato') THEN
		INSERT INTO accessopiscina
			SELECT P.IDPiscina AS IDPiscina, NEW.IDContratto AS IDContratto,  20 AS NumeroAccessi
            FROM piscina P 
            WHERE P.IDCentro = NEW.IDCentro;
            
    END IF;
END $$

DELIMITER;

/*********************************************************************************************************************************************/



DROP TRIGGER IF EXISTS Controllo_Stelle;
 
DELIMITER $$
 
 CREATE TRIGGER Controllo_Stelle
 BEFORE INSERT ON voto
 FOR EACH ROW
 
 BEGIN 
	IF (NEW.Stelle <= 0) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Non si accettano valutazioni minori uguali a zero.';
	ELSEIF (NEW.Stelle > 5) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Non si accettano valutazioni maggiori di 5.';
	END IF;
 END $$
DELIMITER;


/****************************************************************************************************************************/



DROP EVENT IF EXISTS Aggiornamento_Posti_Disponibili;

DELIMITER $$

CREATE EVENT Aggiornamento_Posti_Disponibili
ON SCHEDULE EVERY 5 MINUTE
DO
 BEGIN
 UPDATE spogliatoio S
 SET S.PostiDisponibili = S.PostiDisponibili + ( 	
											  SELECT COUNT(*)
											  FROM accesso A 
												   INNER JOIN 
                                                   armadietto T ON A.IDArmadietto = T.IDArmadietto
                                              WHERE  T.IDSpogliatoio = S.IDSpogliatoio AND
													 S.Capienza > S.PostiDisponibili AND
													 A.OrarioUscita IS NOT NULL
                                            );
 END $$
DELIMITER;


 
 /*****************************************************************************************************************************************/
 

DROP TRIGGER IF EXISTS Inserimento_Accesso;

DELIMITER $$


CREATE TRIGGER Inserimento_Accesso
BEFORE INSERT ON accesso
FOR EACH ROW

BEGIN
	
    DECLARE valore INTEGER DEFAULT 0;
    DECLARE sessocliente VARCHAR (1) DEFAULT 0;
    DECLARE sessospogliatoio VARCHAR (1) DEFAULT 0;
    
    SET sessocliente = ( SELECT DISTINCT C.Sesso
						 FROM accesso A
                              INNER JOIN 
                              cliente C ON A.CodFiscaleCliente = C.CodFiscaleCliente
                         WHERE A.CodFiscaleCliente = NEW.CodFiscaleCliente
						);
                        
    SET sessospogliatoio = ( SELECT DISTINCT S.Sesso
							 FROM accesso A 
                                  INNER JOIN 
                                  armadietto T ON A.IDArmadietto = T.IDArmadietto
								  INNER JOIN 
                                  spogliatoio S ON S.IDSpogliatoio = T.IDSpogliatoio
							 WHERE A.IDArmadietto = NEW.IDArmadietto
							);
    SET valore = ( SELECT COUNT(*)
				   FROM accesso A 
                        INNER JOIN 
                        armadietto T ON A.IDArmadietto = T.IDArmadietto
                   WHERE A.DataAccesso = NEW.DataAccesso
						 AND
						 A.IDArmadietto = NEW.IDArmadietto
                         AND
                         A.OrarioUscita IS NULL
                         );
	
    
    IF (valore > 0) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Armadietto non disponibile';
	ELSEIF (sessocliente <> sessospogliatoio) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Spogliatoio Sbagliato';
	ELSE 
		UPDATE Spogliatoio L
		SET  L.PostiDisponibili = L.PostiDisponibili -1
        WHERE L.IDSpogliatoio = ( SELECT DISTINCT T.IDSpogliatoio
								  FROM accesso A 
                                       INNER JOIN 
                                       armadietto T ON A.IDArmadietto = T.IDArmadietto
                                  WHERE A.IDArmadietto = NEW.IDArmadietto
                                  );
	END IF;
    
END $$
DELIMITER;

/***********************************************************************************************************************************************/


DROP TRIGGER IF EXISTS Controllo_Livello_Usura_Attrezzo;

DELIMITER $$

CREATE TRIGGER Controllo_Livello_Usura_Attrezzo
BEFORE INSERT ON attrezzoutilizzato
FOR EACH ROW

BEGIN 
	
  DECLARE usura DOUBLE DEFAULT 0;
  
  SET usura = ( SELECT DISTINCT A.LivelloUsura
				FROM attrezzo A 
					 INNER JOIN 
                     attrezzoutilizzato T ON A.IDAttrezzo = T.IDAttrezzo
                WHERE A.IDAttrezzo = NEW.IDAttrezzo
				);
                
 IF (usura = 100) THEN
	SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Attrezzo non utilizzabile, bisogno di manutenzione';
 ELSE
   UPDATE attrezzo P
   SET P.LivelloUsura = P.LivelloUsura + 0.1
   WHERE P.IDAttrezzo = NEW.IDAttrezzo;
  END IF; 
  
END $$
DELIMITER;




/**********************************************************************************************************************************/





DROP TRIGGER IF EXISTS Controllo_Multisede;

DELIMITER $$

CREATE TRIGGER Controllo_Multisede
BEFORE INSERT ON multisede
FOR EACH ROW

BEGIN
	DECLARE conta INTEGER DEFAULT 0;
    
    SET conta = ( SELECT COUNT(*)
				  FROM multisede M
                  WHERE M.IDContratto = NEW.IDContratto
                  );
	IF (conta = 3) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Impossibilie aggiungere altre sedi, il cliente è iscritto già a 3 sedi diverse';
	END IF;
END $$
DELIMITER;

/************************************************************************************************************************/

DROP TRIGGER IF EXISTS Gestione_Turnazione;

DELIMITER $$

CREATE TRIGGER Gestione_Turnazione
BEFORE INSERT ON orariodilavoro
FOR EACH ROW
BEGIN
	
    DECLARE finito INTEGER DEFAULT 0;
    DECLARE nuoveore TIME DEFAULT 0;
    DECLARE calcoloore TIME DEFAULT 0;
    DECLARE centropermesso VARCHAR (45) DEFAULT NULL;
    DECLARE orario1 TIME DEFAULT 0;
    DECLARE orario2 TIME DEFAULT 0;
    
    DECLARE oraril CURSOR FOR
		SELECT P.OrarioInizio, P.OrarioFine
        FROM orariodilavoro P
		WHERE P.IDCentro = NEW.IDCentro
			  AND P.NomeGiornoLavoro = NEW.NomeGiornoLavoro
              AND P.CodFiscaleDip = NEW.CodFiscaleDip;
	
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito = 1;
    
    OPEN oraril;
    
    scan: LOOP
			FETCH oraril INTO orario1, orario2;
				IF finito = 1 THEN
					LEAVE scan;
				ELSEIF (orario1 <= NEW.OrarioInizio AND orario2 >= NEW.OrarioInizio) THEN
					SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Impossibilie inserire turnazione, il cliente è impegnato in quella fascia oraria';
                    LEAVE scan;
				END IF;
			END LOOP scan;
            CLOSE oraril;
    
    SET centropermesso = (SELECT DISTINCT O.IDCentro
						  FROM orariodilavoro O
                          WHERE O.NomeGiornoLavoro = NEW.NomeGiornoLavoro 
								AND
                                O.CodFiscaleDip = NEW.CodFiscaleDip
						);
                        
    SET nuoveore = (TIME_FORMAT(TIMEDIFF(NEW.OrarioFine, NEW.OrarioInizio), '%H:%i'));
    
	SET calcoloore = (
					  SELECT TIME_FORMAT(SUM( TIMEDIFF(O.OrarioFine, O.OrarioInizio)), '%H:%i')
					  FROM orariodilavoro O
					  WHERE O.NomeGiornoLavoro = NEW.NomeGiornoLavoro
		                    AND
                            O.CodFiscaleDip = NEW.CodFiscaleDip
							AND 
                            O.IDCentro = NEW.IDCentro
                      );
    
	
    
	IF (ADDTIME(calcoloore, nuoveore) > '8:00') THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Errore, Impossibile inserire Turnazione poichè il dipendente lavora più di 8 ore';
	ELSEIF (NEW.IDCentro <> centropermesso) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Errore, impossibile inserire fasce orario di uno stesso giorno in cui un dipendente è assegnato a centri diversi';
    END IF;
END $$
DELIMITER;

/***************************************************************************************************************************************/

DROP TRIGGER IF EXISTS InserimentoSpogliatoio;

DELIMITER $$

CREATE TRIGGER InserimentoSpogliatoio
BEFORE INSERT ON spogliatoio
FOR EACH ROW

BEGIN
 IF (NEW.Capienza <> NEW.PostiDisponibili) THEN
	SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Errore, Capienza deve essere uguale a posti disponibili';
 END IF;
END $$
DELIMITER;



/***********************************************************************************************************************/



DROP TABLE IF EXISTS performancesportiva;
CREATE TABLE PerformanceSportiva (
	Cliente VARCHAR(45) NOT NULL,
    SchedaAllenamento VARCHAR (45) NOT NULL,
    Esercizio VARCHAR (45) NOT NULL,
    NumeroEsecuzioni INT NOT NULL,
    EsecuzioniCorrette INT NOT NULL,
    EsercizioDaSostituire BOOL,
    PRIMARY KEY (Cliente, SchedaAllenamento, Esercizio)
    )ENGINE = InnoDB DEFAULT CHAR SET = latin1;

CREATE OR REPLACE VIEW EsecuzioneCorrettaEsercizi AS 
SELECT *
FROM esercizio E 
	 LEFT OUTER JOIN 
     aerobico A ON E.IDEsercizio = A.IDEsercizioAerobico
	 LEFT OUTER JOIN 
     anaerobico AN ON E.IDEsercizio = AN.IDEsercizioAnaerobico;
     
     

DROP PROCEDURE IF EXISTS refresh_Performance_Sportiva_Aerobica;
DELIMITER $$
CREATE PROCEDURE refresh_Performance_Sportiva_Aerobica (OUT esito INTEGER)
BEGIN
   
	DECLARE esito INTEGER DEFAULT 0;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		ROLLBACK;
        SET esito = 1;
        SELECT 'Si è verificato un errore, materialized view non aggiornata.';
	END;
    
    TRUNCATE PerformanceSportiva;


	INSERT INTO PerformanceSportiva (Cliente, SchedaAllenamento, Esercizio, NumeroEsecuzioni, EsecuzioniCorrette)
	SELECT S.CodFiscaleCliente,
		   S.IDSchedaAllenamento, 
           C.IDEsercizio, COUNT(*),
           SUM(IF(M.IstanteFine - M.IstanteInizio = EC.DurataMinuti, 1, 0))
    FROM schedaallenamento S 
		 INNER JOIN composizioneallenamento C ON S.IDSchedaAllenamento = C.IDSchedaAllenamento
	     INNER JOIN EsecuzioneCorrettaEsercizi  EC ON C.IDEsercizio = EC.IDEsercizio
         INNER JOIN monitoraggiosmart M ON (M.IDEsercizio = EC.IDEsercizio AND M.IDSchedaAllenamento = C.IDSchedaAllenamento)
	WHERE EC.NomeAnaerobico IS NULL
    GROUP BY S.CodFiscaleCliente, S.IDSchedaAllenamento, C.IDEsercizio;
    
END $$

DELIMITER;



DROP EVENT IF EXISTS Event_Performance_Sportiva_Aerobica;

DELIMITER $$

CREATE EVENT Event_Performance_Sportiva_Aerobica
ON SCHEDULE EVERY 2 WEEK
DO
 BEGIN
	SET @esito = 0;
    
    CALL refresh_Performance_Sportiva_Aerobica (@esito);
    
    IF @esito = 1 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Errore refresh.';
	END IF;
    
    UPDATE performancesportiva P
    SET P.EsercizioDaSostituire = 1
	WHERE P.EsecuzioniCorrette < (P.NumeroEsecuzioni * 70)/100;
	
  END $$
  
DELIMITER ;



/********************************************************************************/

DROP TRIGGER IF EXISTS Controllo_Amicizia;

DELIMITER $$

CREATE TRIGGER Controllo_Amicizia
BEFORE INSERT ON amico
FOR EACH ROW
BEGIN

	DECLARE conta INTEGER DEFAULT 0;
    
    SET conta = ( SELECT COUNT(*)
				  FROM amico A
                  WHERE A.Username = new.UsernameAmico
					    AND
                        A.UsernameAmico = new.Username
				);
                
	IF (conta > 0) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Errore inserimento, Amicizia già presente.';
	END IF;
END $$

DELIMITER ;


/*********************************************************************************************************/
DROP TRIGGER IF EXISTS Controllo_Partecipanti_Corso;

DELIMITER $$

CREATE TRIGGER Controllo_Partecipanti_Corso
BEFORE INSERT ON corsofrequentato
FOR EACH ROW
BEGIN
	
	DECLARE numeromax INTEGER DEFAULT 0;
    DECLARE numero1 INTEGER DEFAULT 0;
    
    SET numeromax = (
					SELECT C.NumeroMaxPartecipanti
					FROM corso C
					WHERE C.IDCorso = NEW.IDCorso
					);
                    
	SET numero1 = (
				   SELECT count(*)
                   FROM corsofrequentato CF
                   WHERE CF.IDCorso = NEW.IDCorso
                   );
	IF (numero1 = numeromax) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Errore, Corso ha raggiunto numero massimo di partecipanti.';
	END IF;
END $$

DELIMITER ;

/********************************************************************************************************************/

DROP TRIGGER IF EXISTS Controllo_Richiesta_Amicizia;

DELIMITER $$

CREATE TRIGGER Controllo_Richiesta_Amicizia
AFTER UPDATE ON richiestaamicizia
FOR EACH ROW
BEGIN
	
    IF(NEW.StatoRichiesta = 'Accettata') THEN
		INSERT INTO amico
        VALUES(NEW.UsernameDestinatario, NEW.Username);
	END IF;
END $$

DELIMITER ;