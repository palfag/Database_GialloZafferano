
-- Autori

insert into autore(nome,tipoAutore,email,password,foto,bio,numCommenti,numRicette) 
values ('Carlo Cracco', 'cuoco', null, null, 'Cracco.jpg','Benvenuti nel mio profilo CC', null, 0),
       ('Bruno Barbieri', 'cuoco', null, null, 'Barbieri.jpg','Benvenuti nel mio profilo BB', null, 0),
       ('Alessandro Borghese', 'cuoco', null, null, 'Borghese.jpg','Il mio voto può ribaltare la situazione AB', null, 0),
       ('Redazione GialloZafferano', 'redazione', null, null, null, null, null, 0),
       ('palfag', 'utente', 'palfag@hotmail.it','Prova1','foto1.jpg', null, 0, 0),
       ('yuricaridi', 'utente', 'yuri.caridi@gmail.com','Ppppp98','foto.jpg', null, 0, 0),
       ('askaro', 'utente', 'vigoclaudio@outlook.com','Army72','foto.jpg', null, 0, 0),
       ('violetaovando', 'utente', 'violeta@yahoo.com','Argentina2000','viola.jpg', null, 0, 0),
       ('em_milia_99', 'utente', 'ema.milia@hotmail.it','Sardinian99','Sardegna.jpg', null, 0, 0),
       ('bea_gandino', 'utente', 'beaG@aruba.com','LUSH9878','lushes.jpg', null, 0, 0),
       ('lavi_cirt', 'utente', 'cirz@airmail.org','patatinaCirz','cip.jpg', null, 0, 0);

-- Ricette
insert into ricetta(idRicetta,proprietario,titolo,descrizione,preparazione,cottura,difficolta,dosi,costo,portata)
values ('idr01','Carlo Cracco','uovo in camicia','come cucinare un uovo alla cracco','00:04:00','00:15:00','medio','4','basso','antipasto'),
       ('idr02','Carlo Cracco','pizza integrale','pizza sana milanese','00:40:00','00:20:00','difficile','1','medio','secondo'),
       ('idr03','Alessandro Borghese','spaghetti alla carbonara','le cucine romane in tavola','00:15:00','00:10:00','medio','2','medio','primo'),
       ('idr04','Alessandro Borghese','spaghetti cacio e pepe','le cucine romane in tavola','00:14:00','00:10:00','molto difficile','4','alto','primo'),
       ('idr05','Bruno Barbieri','vellutata di zucca','una vellutata sana e leggera','00:15:00','00:30:00','medio','3','basso','primo'),
       ('idr06','lavi_cirt','placinta','la vera e unica tradizionale','00:15:00','00:15:00','facile','4','basso','antipasto'),
       ('idr07','palfag','spaghetti con il tonno','il mare in tavola','00:10:00','00:09:00','molto facile','2','medio','primo'),
       ('idr08','lavi_cirt','tiramisu','il segreto per un buon tiramisu è il mascarpone','02:00:00','00:00:00','medio','6','basso','dolce'),
       ('idr09','askaro','lasagne al pesto','pesto fatto in casa, non barilla','00:30:00','00:15:00','molto facile','2','alto','primo'),
       ('idr10','palfag','patate al forno','buone e gustose','00:15:00','01:05:00','medio','6','basso','contorno'),
       ('idr11','bea_gandino','verdure al forno','le verdure devono essere croccanti','00:34:00','01:35:00','facile','8','basso','contorno');


-- Diete
insert into Dieta(tipoDieta)
values  ('senza glutine'),
        ('light'),
        ('senza lattosio'),
        ('vegetariana'),
        ('basso nichel');

-- Ingredienti
insert into Ingrediente(nome)
values  ('uova'),
        ('olio'),
        ('sale'),
        ('pepe'),
        ('pomodoro'),
        ('mozzarella'),
        ('lievito'),
        ('farina'),
        ('spaghetti'),
        ('pasta a strati'),
        ('pancetta'),
        ('guanciale'),
        ('cacio'),
        ('zucca'),
        ('placinta'),
        ('formaggio'),
        ('tonno'),
        ('peperoncino'),
        ('aglio'),
        ('cipolla'),
        ('savoiardi'),
        ('caffe'),
        ('mascarpone'),
        ('cacao'),
        ('pinoli'),
        ('basilico'),
        ('parmigiano'),
        ('patate'),
        ('zucchine'),
        ('carote'),
        ('melanzane');

-- Commenti
insert into Commento(idCommento,autoreCommento,ricetta,testo,data,orario,risposta)
values  ('idc01','palfag','idr05','vellutata riuscita, Grazie!','2018-06-10','20:30:00',null),
        ('idc02','Redazione GialloZafferano','idr05','Siamo felici che i nostri utenti apprezzino il servizio','2018-06-10','20:35:00','idc01'),
        ('idc03','palfag','idr05','Si, veramente un ottimo sito','2018-06-10','20:40:00','idc02'),
        ('idc04','bea_gandino','idr01','pur seguendo le indicazioni il mio uovo si è disfatto','2019-07-14','14:30:00',null),
        ('idc05','lavi_cirt','idr01','dovresti provare ad aggiungere un po di aceto','2019-07-14','15:00:00','idc04'),
        ('idc06','askaro','idr07','ho provato aggiungendo le acciughe, delizioso','2019-02-09','13:53:00',null),
        ('idc07','palfag','idr07','proverò anche io... grazie del consiglio!','2019-02-10','23:23:00','idc06');


-- Relazione seguaci
insert into Segue(utente,cuoco)
values  ('palfag','Bruno Barbieri'),
        ('palfag','Carlo Cracco'),
        ('yuricaridi','Alessandro Borghese'),
        ('askaro','Carlo Cracco'),
        ('violetaovando','Bruno Barbieri'),
        ('lavi_cirt','Bruno Barbieri'),
        ('bea_gandino','Bruno Barbieri'),
        ('yuricaridi','Bruno Barbieri');

-- Salvataggio ricette nei preferiti
insert into Salva(utente,ricetta)
values  ('palfag','idr11'),
        ('palfag','idr01'),
        ('yuricaridi','idr11'),
        ('askaro','idr07'),
        ('em_milia_99','idr02'),
        ('em_milia_99','idr10'),
        ('lavi_cirt','idr03'),
        ('bea_gandino','idr05'),
        ('em_milia_99','idr04'),
        ('violetaovando','idr01');

-- Appartenenza di una ricetta ad una dieta
insert into Appartiene(ricetta,dieta)
values  ('idr01','senza lattosio'),
        ('idr01','vegetariana'),
        ('idr01','senza glutine'),
        ('idr02','vegetariana'),
        ('idr02','basso nichel'),
        ('idr04','vegetariana'),
        ('idr05','vegetariana'),
        ('idr05','light'),
        ('idr05','senza glutine'),
        ('idr05','senza lattosio'),
        ('idr06','vegetariana'),
        ('idr08','vegetariana'),
        ('idr09','vegetariana'),
        ('idr10','vegetariana'),
        ('idr11','senza glutine'),
        ('idr11','senza lattosio'),
        ('idr11','vegetariana');

-- Ingredienti che compongono una ricetta
insert into Composta(ricetta,ingrediente,quantita,annotazioni)
values  ('idr01','uova','6','null'),
        ('idr02','farina','500 gr.', 'tipo 00'),
        ('idr02','pomodoro','1 lt.','tipo passata o a pezzi (dipende dai gusti)'),
        ('idr02','mozzarella','300 gr.','fiordilatte'),
        ('idr02','lievito','10 gr.','madre di birra'),
        ('idr02','olio','q.b.',null),
        ('idr02','sale','q.b.',null),
        ('idr03','spaghetti','300 gr.','trafilati al bronzo'),
        ('idr03','guanciale','100 gr.','se non disponibile si può usare anche la pancetta'),
        ('idr03','uova','4','solo i tuorli'),
        ('idr03','sale','q.b.',null),
        ('idr03','pepe','q.b.',null),
        ('idr04','spaghetti','300 gr.','trafilati al bronzo'),
        ('idr04','cacio','100 gr.','pecorino romano semi-stagionato'),
        ('idr04','pepe','q.b.',null),
        ('idr05','zucca','1 kg.','possibilmente matura'),
        ('idr05','olio','q.b.',null),
        ('idr06','farina','500 gr.', 'tipo 00'),
        ('idr06','olio','q.b.',null),
        ('idr06','formaggio','100gr',null),
        ('idr07','spaghetti','200 gr.', null),
        ('idr07','olio','q.b.',null),
        ('idr07','aglio','2 spicchi',null),
        ('idr07','tonno','3 scatolette da 52 gr.','al naturale'),
        ('idr08','cacao','q.b.','mettere alla fine come decorazione'),
        ('idr08','mascarpone','200 gr.',null),
        ('idr08','caffe','8 tazzine',null),
        ('idr08','savoiardi','250 gr.',null),
        ('idr08','uova','5',null),
        ('idr09','pasta a strati','200 gr.',null),
        ('idr09','pinoli','10 gr.',null),
        ('idr09','basilico','50 gr.',null),
        ('idr09','parmigiano','35 gr.',null),
        ('idr09','olio','q.b.',null),
        ('idr09','mascarpone','200 gr.',null),
        ('idr10','patate','500 gr.',null),
        ('idr10','olio','q.b.',null),
        ('idr11','zucchine','200 gr.',null),
        ('idr11','melanzane','300 gr.',null),
        ('idr11','carote','100 gr.', null),
        ('idr11','olio','q.b.',null),
        ('idr11','sale','q.b.',null);

-- Ingredienti aggiunti alla lista della spesa
insert into ListaSpesa(autore,ingrediente,quantita)
values  ('palfag','patate',null),
        ('palfag','olio', '1'),
        ('lavi_cirt','farina','1 kg.'),
        ('lavi_cirt','formaggio','350 gr.'),
        ('askaro','basilico','35 gr.'),
        ('askaro','uova',null),
        ('askaro','pancetta','200 gr.'),
        ('askaro','patate','1 kg.'),
        ('bea_gandino','carote','1 kg.'),
        ('violetaovando','spaghetti','500 gr.'),
        ('yuricaridi','patate','750 gr.');



