

-- creazione di domini personalizzati
create domain tipoA 
as varchar(32)
check(value in('utente','cuoco','redazione'));

create domain tipoPortata
as varchar(32)
check(value in('antipasto','primo','secondo','contorno','dolce'));

create domain livelloDiff
as varchar(32)
check(value in('molto facile','facile','medio','difficile','molto difficile'));

create domain fasciaCosto
as varchar(32)
check(value in('basso','medio','alto'));

create domain tDieta
as varchar(32)
check(value in('senza glutine','senza lattosio','light','vegetariana','basso nichel'));


-- creazione tabelle
create table Autore(
    nome varchar(32) primary key,
    tipoAutore tipoA not null,
    email varchar(32) unique,
    password varchar(32),
    foto varchar(32),
    bio varchar(512),
    numCommenti integer default 0,
    numRicette integer default 0
);

create table Ricetta(
    idRicetta varchar(32) primary key,
    proprietario varchar(20),
    titolo varchar(32),
    descrizione varchar(1024) not null,
    preparazione time not null,
    cottura time not null,
    difficolta livelloDiff not null,
    dosi smallint not null,
    costo fasciaCosto not null,
    portata tipoPortata not null,
    foreign key(proprietario) references Autore(nome) on update cascade on delete set null
);

create table Dieta(
    tipoDieta tDieta primary key 
);

create table Ingrediente(
    nome varchar(32) primary key
);

create table Commento(
    idCommento varchar(32) primary key,
    autoreCommento varchar(32),
    ricetta varchar(32),
    testo varchar(250),
    data date,
    orario time,
    risposta varchar(32) default null,
    foreign key(autoreCommento) references Autore(nome) on update cascade on delete set null,
    foreign key(ricetta) references Ricetta(idRicetta) on update cascade on delete cascade,
    foreign key(risposta) references Commento(idCommento) on update cascade on delete cascade
);

create table Segue(
    utente varchar(32),
    cuoco varchar(32),
    primary key(utente,cuoco),
    foreign key(utente) references Autore(nome) on update cascade on delete cascade,
    foreign key(cuoco) references Autore(nome) on update cascade on delete cascade
);

create table Salva(
    utente varchar(32),
    ricetta varchar(32),
    primary key(utente,ricetta),
    foreign key(utente) references Autore(nome) on update cascade on delete cascade,
    foreign key(ricetta) references Ricetta(idRicetta) on update cascade on delete cascade
);

create table Appartiene(
    ricetta varchar(32),
    dieta varchar(32),
    primary key(ricetta,dieta),
    foreign key(ricetta) references Ricetta(idRicetta) on update cascade on delete cascade,
    foreign key(dieta) references Dieta(tipoDieta) on update cascade on delete cascade
);

create table Composta(
    ricetta varchar(32),
    ingrediente varchar(32),
    quantita varchar(32) not null,
    annotazioni varchar(50),
    primary key(ricetta,ingrediente),
    foreign key(ricetta) references Ricetta(idRicetta) on update cascade on delete cascade,
    foreign key(ingrediente) references Ingrediente(nome)
);

create table ListaSpesa(
    autore varchar(32),
    ingrediente varchar(32),
    quantita varchar(32),
    primary key(autore,ingrediente),
    foreign key(autore) references Autore(nome) on update cascade on delete cascade,
    foreign key(ingrediente) references Ingrediente(nome) on update cascade on delete cascade
);

