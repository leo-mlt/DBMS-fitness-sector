use aziendacentrofitness;

drop trigger if exists Controllo_Multisede;
drop trigger if exists Controllo_Livello_Usura_Attrezzo;
drop trigger if exists Inserimento_Accesso;
drop event if exists Aggiornamento_Posti_Disponibili;
drop trigger if exists Controllo_Stelle;
drop trigger if exists Entita_Stato_Visita_Cliente;
drop trigger if exists Gestione_Turnazione;
drop trigger if exists InserimentoSpogliatoio;
drop trigger if exists Accesso_Piscina;
DROP TRIGGER IF EXISTS Controllo_Amicizia;
drop trigger if exists Controllo_Partecipanti_Corso;
DROP TRIGGER IF EXISTS Controllo_Richiesta_Amicizia;

drop procedure if exists ModificaRata;
drop procedure IF exists nserimentoSchedaAllenamento;
drop procedure if exists InserirePotenziamento;
drop procedure if exists InserimentoVisita;
drop procedure if exists AttrezzoUsurato;
drop procedure if exists PostiDiUnThread;
drop procedure if exists ControlloRipetizioni;
drop procedure if exists TrovarePosti;
DROP PROCEDURE IF EXISTS refresh_Performance_Sportiva_Aerobica;
DROP EVENT IF EXISTS Event_Performance_Sportiva_Aerobica;
