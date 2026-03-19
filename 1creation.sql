-- tables creation

create table furnizori (
id_furnizor NUMBER(10) constraint pk_furnizori primary key,
nume_furnizor VARCHAR2(40),
adresa VARCHAR2(100),
telefon NUMBER(10)
);

create table produse (
id_produs NUMBER(10) constraint pk_produse primary key,
nume_produs VARCHAR2(50),
categorie VARCHAR2(50),
pret NUMBER(10),
stoc NUMBER(10),
id_furnizor NUMBER(10), constraint fk_furnizori foreign key(id_furnizor) references furnizori(id_furnizor)
);

create table clienti (
id_client NUMBER(10) constraint pk_clienti primary key,
nume VARCHAR2(30),
prenume VARCHAR2(50),
email VARCHAR2(40),
telefon NUMBER(10)
);

create table comenzi(
id_comanda NUMBER(10) constraint pk_comenzi primary key,
id_client NUMBER(10), constraint fk_clienti foreign key(id_client) references clienti(id_client),
data_comanda DATE,
valoare_comanda NUMBER(20)
);

create table detalii_comenzi(
id_detaliu NUMBER(10) constraint pk_detalii_comenzi primary key,
id_comanda NUMBER(10), constraint fk_comenzi foreign key(id_comanda) references comenzi(id_comanda),
id_produs NUMBER(10), constraint fk_produse foreign key(id_produs) references produse(id_produs),
cantitate NUMBER(10),
pret_unitar NUMBER(10)
);

-- conditions

alter table clienti add cod_postal VARCHAR2(10);
alter table clienti modify telefon VARCHAR2(15);
alter table furnizori add constraint unq_nume_furnizor UNIQUE (nume_furnizor);
-- alter table produse drop column stoc;