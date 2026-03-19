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


