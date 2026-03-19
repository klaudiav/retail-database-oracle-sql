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
