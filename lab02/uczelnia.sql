CREATE TABLE prof (
    id		SERIAL PRIMARY KEY,
    imie        VARCHAR(50) NOT NULL,
    nazwisko    VARCHAR(50) NOT NULL
);

CREATE TABLE przedmioty (
    id			SERIAL PRIMARY KEY,
    nazwa		VARCHAR(150) NOT NULL,
    prof_id		INTEGER REFERENCES prof(id),
    kod_classroom	VARCHAR(10),
    ilosc_godzin	INTEGER NOT NULL
);

CREATE TABLE studenci (
    id			SERIAL PRIMARY KEY,
    imie		VARCHAR(50) NOT NULL,
    nazwisko		VARCHAR(50) NOT NULL,
    nr_indeksu		INTEGER NOT NULL,
    data_urodzenia	DATE NOT NULL,
    czy_stypendium	BOOLEAN
);

CREATE TABLE stopnie (
    id			SERIAL PRIMARY KEY,
    wartosc		NUMERIC (2,1) NOT NULL
);

CREATE TABLE oceny (
    student_id		INTEGER REFERENCES studenci(id),
    przedmiot_id	INTEGER REFERENCES przedmioty(id),
    stopien_id		INTEGER REFERENCES stopnie(id)
);

INSERT INTO stopnie (wartosc) VALUES
    (2), (2.5), (3), (3.5), (4), (4.5), (5);

INSERT INTO prof (imie, nazwisko) VALUES
    ('Andrzej', 'Magier'),
    ('Antoni', 'Myśliński'),
    ('Paweł', 'Zieliński'),
    ('Grzegorz', 'Borowski'),
    ('Michał', 'Nowak');

INSERT INTO przedmioty ( nazwa, prof_id, kod_classroom, ilosc_godzin) VALUES
    ('Podstawy Metod Probabilistycznych', 1, 'io3sem', 45),
    ('Programowanie Obiektowe II', 2, 'po3sem', 45),
    ('Systemy Operacyjne', 4, 'mtp3s', 30),
    ('Sieci Komputerowe', 3, 'infst', 30),
    ('Bazy Danych', 3, 'bdsi3', 30),
    ('Język Angielski', 5, 'abc341', 15);

INSERT INTO studenci (imie, nazwisko, nr_indeksu, data_urodzenia, czy_stypendium) VALUES
    ('Maria', 'Miłkowska', 46623, '2004-05-15', TRUE),
    ('Jan', 'Kowalski', 46624, '2003-11-22', FALSE),
    ('Anna', 'Nowak', 46625, '2004-01-10', TRUE),
    ('Piotr', 'Zieliński', 46626, '2002-08-30', FALSE),
    ('Katarzyna', 'Szymańska', 46627, '2003-03-05', TRUE),
    ('Krzysztof', 'Woźniak', 46628, '2004-07-19', FALSE),
    ('Maria', 'Dąbrowska', 46629, '2003-12-12', TRUE),
    ('Tomasz', 'Kamiński', 46630, '2001-04-25', FALSE),
    ('Agnieszka', 'Wójcik', 46631, '2004-09-02', TRUE),
    ('Michał', 'Krawczyk', 46632, '2003-06-14', FALSE);


INSERT INTO oceny (student_id, przedmiot_id, stopien_id) VALUES
    (1, 1, 7),
    (5, 5, 7), 
    (6, 4, 4), 
    (7, 2, 6),
    (1, 5, 6), 
    (8, 3, 3), 
    (4, 3, 1), 
    (9, 5, 7), 
    (2, 2, 3), 
    (3, 1, 5), 
    (10, 1, 5),
    (7, 6, 6);
