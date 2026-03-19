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

-- suppliers (furnizori) table info insertion
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (1, 'Mirdatod', 'Adresa 1', 0771232345);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (2, 'Unilever', 'Adresa 2', 0723585648);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (3, 'Boromir', 'Adresa 3', 0779259999);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (4, 'Cristim', 'Adresa 4', 0764323171);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (5, 'Dorna', 'Adresa 5', 0755345555);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (6, 'Albalact', 'Adresa 6', 0781921000);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (7, 'Roshen', 'Adresa 7', 0231564328);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (8, 'Delaco', 'Adresa 8', 0733784321);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (9, 'Mars', 'Adresa 9', 0799123456);
insert into furnizori (id_furnizor, nume_furnizor, adresa, telefon) values (10, 'Davidoff', 'Adresa 10', 0231100250);

-- products (produse) table info insertion
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (1, 'Cascaval', 'Lactate', 100, 50, 1);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (2, 'Biscuiti', 'Dulciuri', 200, 30, 2);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (3, 'Cozonac', 'Patiserie', 150, 20, 3);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (4, 'Salam sasesc', 'Mezeluri', 300, 10, 4);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (5, 'Lapte', 'Lactate', 400, 15, 5);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (6, 'Unt', 'Lactate', 50, 25, 6);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (7, 'Ciocolata', 'Dulciuri', 250, 40, 7);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (8, 'Cascaval', 'Lactate', 700, 5, 8);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (9, 'Ciocolata', 'Dulciuri', 350, 12, 9);
insert into produse (id_produs, nume_produs, categorie, pret, stoc, id_furnizor) values (10, 'Tigari', 'Tigari', 500, 8, 10);

-- clients (clienti) table info insertion
insert into clienti (id_client, nume, prenume, email, telefon) values (1, 'Popescu', 'Ion', 'popescu.ion@example.com', 0777777081, 57901);
insert into clienti (id_client, nume, prenume, email, telefon) values (2, 'Ionescu', 'Maria', 'ionescu.maria@example.com', 0723232421, 62019);
insert into clienti (id_client, nume, prenume, email, telefon) values (3, 'Georgescu', 'Andrei', 'georgescu.andrei@example.com', 0721558423, 40192);
insert into clienti (id_client, nume, prenume, email, telefon) values (4, 'Dumitrescu', 'Elena', 'dumitrescu.elena@example.com', 0757875591, 78192);
insert into clienti (id_client, nume, prenume, email, telefon) values (5, 'Stan', 'Mihai', 'stan.mihai@example.com', 0791523497, 10231);
insert into clienti (id_client, nume, prenume, email, telefon) values (6, 'Radu', 'Cristina', 'radu.cristina@example.com', 0723112081, 44021);
insert into clienti (id_client, nume, prenume, email, telefon) values (7, 'Vasilescu', 'Alex', 'vasilescu.alex@example.com', 0764797312, 71823);
insert into clienti (id_client, nume, prenume, email, telefon) values (8, 'Marinescu', 'Oana', 'marinescu.oana@example.com', 0793174890, 99124);
insert into clienti (id_client, nume, prenume, email, telefon) values (9, 'Popa', 'Vlad', 'popa.vlad@example.com', 0748064891, 42557);
insert into clienti (id_client, nume, prenume, email, telefon) values (10, 'Tudor', 'Roxana', 'tudor.roxana@example.com', 0744781553, 61239);

-- orders (comenzi) table info insertion
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (1, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 1500);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (2, 2, TO_DATE('2025-01-02', 'YYYY-MM-DD'), 2500);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (3, 3, TO_DATE('2025-01-03', 'YYYY-MM-DD'), 1800);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (4, 4, TO_DATE('2025-01-04', 'YYYY-MM-DD'), 2200);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (5, 5, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 3000);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (6, 6, TO_DATE('2025-01-06', 'YYYY-MM-DD'), 1200);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (7, 7, TO_DATE('2025-01-07', 'YYYY-MM-DD'), 1700);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (8, 8, TO_DATE('2025-01-08', 'YYYY-MM-DD'), 2600);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (9, 9, TO_DATE('2025-01-09', 'YYYY-MM-DD'), 1900);
insert into comenzi (id_comanda, id_client, data_comanda, valoare_comanda) values (10, 10, TO_DATE('2025-01-10', 'YYYY-MM-DD'), 3100);

-- order_details (detalii_comenzi) table info insertion
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (1, 1, 1, 2, 100);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (2, 1, 2, 2, 200);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (3, 2, 3, 3, 150);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (4, 2, 4, 1, 300);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (5, 3, 5, 4, 400);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (6, 3, 6, 5, 50);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (7, 4, 7, 6, 250);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (8, 4, 8, 2, 700);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (9, 5, 9, 3, 350);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (10, 5, 10, 1, 500);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (11, 6, 1, 3, 100);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (12, 6, 2, 2, 200);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (13, 7, 3, 1, 150);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (14, 7, 4, 2, 300);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (15, 8, 5, 5, 400);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (16, 8, 6, 4, 50);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (17, 9, 7, 3, 250);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (18, 9, 8, 1, 700);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (19, 10, 9, 4, 350);
insert into detalii_comenzi (id_detaliu, id_comanda, id_produs, cantitate, pret_unitar) values (20, 10, 10, 2, 500);

-- updating a single record
update clienti
set adresa = 'Strada Noua, Nr. 10', cod_postal = '70010'
where id_client = 1;
update furnizori
set adresa = 'Strada Mare, Nr. 2', telefon = '0723585648'
where id_furnizor = 2;
update furnizori
set nume_furnizor = 'Ana Pann', adresa = 'Strada Kuala Lumpur, Nr. 16', telefon = '0744718226'
where id_furnizor = 3;
update furnizori
set adresa = 'Strada Eliade, Nr. 24', telefon = '0724888112'
where id_furnizor = 4;

select * from furnizori;

-- multiple records update
alter table furnizori add (cod_postal VARCHAR2(10));
update clienti set cod_postal = '500500' where adresa like 'Strada Mare%';

-- all records update
update clienti
set cod_postal = '000000';

-- verification
select * from furnizori, clienti;

-- we create a table angajati (employees)
create table angajati (
    id_angajat int primary key,          
    nume_angajat VARCHAR2(100) not null, 
    data_nasterii date not null,        
    sex CHAR(1) check (sex in ('M', 'F')), 
    ore_lucrate NUMBER(3, 1) check (ore_lucrate >= 0 and ore_lucrate <= 24), 
    salariu NUMBER(10, 2) check (salariu >= 0)
);

-- multiple info insertion into employee table
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (1, 'Ion Popescu', DATE '1985-06-15', 'M', 8.5, 4000.00);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (2, 'Maria Ionescu', DATE '1990-11-20', 'F', 7.0, 3800.50);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (3, 'George Vasile', DATE '1975-01-25', 'M', 9.0, 4500.00);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (4, 'Elena Dumitrescu', DATE '1982-03-10', 'F', 8.0, 4200.75);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (5, 'Andrei Stoica', DATE '1995-07-05', 'M', 7.5, 3700.00);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (6, 'Cristina Neagu', DATE '1988-12-12', 'F', 8.5, 4100.25);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (7, 'Mihai Radu', DATE '1979-09-18', 'M', 9.0, 4600.00);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (8, 'Raluca Voicu', DATE '1993-04-28', 'F', 6.5, 3600.50);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (9, 'Vlad Mihailescu', DATE '1986-02-14', 'M', 8.0, 4000.00);
insert into angajati (id_angajat, nume_angajat, data_nasterii, sex, ore_lucrate, salariu)
values (10, 'Ana Georgescu', DATE '1991-10-01', 'F', 7.5, 3750.00);

-- to view table
select * from angajati;

-- now we delete the employee with ID number 10 (last one on the list)
delete from angajati
where id_angajat = 10;

-- now we delete the employees (angajati) table
drop table angajati;

-- if we want to recover it, we use the next command
flashback table angajati to before drop;

-- simple filtration
select nume_angajat, salariu
from angajati
where salariu > 4000;

-- union operator (we select by 2 criterias)
select nume_angajat, salariu
from angajati
where salariu > 4000
union
select nume_angajat, salariu
from angajati
where ore_lucrate < 8;

-- intersect operator (we select by the intersection of 2 criterias)
select nume_angajat
from angajati
where salariu > 4000
intersect
select nume_angajat
from angajati
where ore_lucrate > 8;

-- minus operator (we select only those who have the first criteria and not the second)
select nume_angajat
from angajati
where salariu > 4000
minus
select nume_angajat
from angajati
where sex = 'F';

-- using decode to show 'M' as 'masculin' and 'F' as 'feminin'
select nume_angajat,
       decode(sex, 'M', 'masculin', 'F', 'feminin', 'necunoscut') as gen
from angajati;

-- usage of case
select nume_angajat, salariu,
       case 
           when salariu > 4500 then 'Salariu mare'
           when salariu between 3500 and 4500 then 'Salariu mediu'
           else 'Salariu mic'
       end as categorie_salariu
from angajati;

-- aggregation by group functions
select sex, avg(salariu) as salariu_mediu, max(salariu) as salariu_maxim
from angajati
group by sex;

-- single-row functions for data processing
select nume_angajat, upper(nume_angajat) as nume_mare, length(nume_angajat) as lungime_nume
from angajati;

-- using a simple subquery
select nume_angajat, salariu
from angajati
where salariu > (select avg(salariu) from angajati);

-- usage of IN
select nume_angajat
from angajati
where id_angajat in (select id_angajat from angajati where salariu > 4500);

-- limitation with ROWNUM
select nume_angajat, salariu
from angajati
where rownum <= 5;

-- SYSDATE function to show age as days since birth
select nume_angajat, salariu, sysdate - data_nasterii as varsta_zile
from angajati;

-- group function with condition
select count(*) as numar_angajati, sum(salariu) as total_salariu
from angajati
where sex = 'F';

-- junction between two tables
select p.nume_produs, d.cantitate, d.pret_unitar
from produse p
join detalii_comenzi d on p.id_produs = d.id_produs
where p.categorie = 'Lactate';

-- external junction (LEFT JOIN)
select p.id_produs, p.nume_produs, p.categorie, p.pret, d.id_comanda, d.cantitate
from produse p
left join 
    detalii_comenzi d
on 
    p.id_produs = d.id_produs
order by 
    p.id_produs;

--TRUNC function to show "rounded" salary
select nume_angajat, TRUNC(salariu, -2) as salariu_trunchiat
from angajati;

-- analytical function RANK to see highest to lowest salary
select nume_angajat, salariu,
       rank() over (order by salariu desc) as pozitie_salariu
from angajati;

-- birth month extraction
select nume_angajat, extract(month from data_nasterii) as luna_nasterii
from angajati;

-- complex nested query
select nume_angajat, salariu
from angajati
where salariu > (
    select avg(salariu)
    from angajati
    where sex = 'M'
);

-- usage of GROUP BY and HAVING
select 
    nume_produs, 
    sum(stoc) as stoc_total
from 
    produse
group by 
    nume_produs
having 
    sum(stoc) >= 20
order by 
    stoc_total desc;

--view as object that saves an interogation
create or replace view detalii_comenzi_view as
select 
    dc.id_comanda, 
    dc.id_produs, 
    p.nume_produs, 
    dc.cantitate, 
    dc.pret_unitar
from 
    detalii_comenzi dc
join 
    produse p on dc.id_produs = p.id_produs;
select * from detalii_comenzi_view;

-- index creation
create index idx_nume_produs on produse(nume_produs);
explain plan for 
select * from produse where nume_produs = 'Ciocolata';

-- synonym creation
create synonym produse_simplificat for produse;
select * from produse_simplificat where categorie = 'Lactate';

-- sequence to populate columns with primary key type
create sequence seq_id_comanda
    start with 1
    increment by 1
    nocache;
insert into comenzi (id_comanda, id_client, data_comenzii) 
values (seq_id_comanda.nextval, 1, TO_DATE('2025-01-05', 'YYYY-MM-DD'));

-- objects deletion
drop view detalii_comenzi_view;
drop index idx_nume_produs;
drop synonym produse_simplificat;
drop sequence seq_id_comanda;

