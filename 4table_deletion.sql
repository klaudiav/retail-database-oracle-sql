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
