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
