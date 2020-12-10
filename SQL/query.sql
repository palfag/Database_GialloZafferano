-- relazione risposta - commento
select idcommento risposta, risposta commento 
from commento
where risposta is not null;

-- selezione risposte 
select idcommento risposte
from commento
where risposta is not null;

-- trovare nome degli utenti e titolo delle ricette salvate
select utente, titolo
from salva join ricetta on(ricetta = idricetta)


-- trovare ricette simili (per dieta)
select idricetta,titolo,proprietario
from ricetta join appartiene on (idricetta = ricetta)
where dieta = 'vegetariana'; 


-- trovare ricette simili (per proprietario)
select idricetta,proprietario,titolo
from ricetta
where proprietario = 'palfag';


-- vincoli
/* PRIMA DELL'AGGIORNAMENTO */
select * from autore;
select * from segue;
select * from salva;
select * from listaspesa;
select * from ricetta;
select * from commento;


update autore set nome = 'palfag33' where nome = 'palfag';
-- ricette e commenti, segue, listaspesa, salva sono stati aggiornati con il nuovo autore

-- vincoli
/* DOPO L'AGGIORNAMENTO DEL NOME DI UN UTENTE */
select * from autore;
select * from segue;
select * from salva;
select * from listaspesa;
select * from ricetta;
select * from commento;


delete from autore where nome = 'palfag33';


-- vincoli
/* DOPO L'ELIMINAZIONE DI UN UTENTE */
select * from autore;
select * from segue;
select * from salva;
select * from listaspesa;
select * from ricetta;
select * from commento;
