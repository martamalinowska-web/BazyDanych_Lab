-- Zadanie 1: Wyświetl nazwy i ceny wszystkich produktów drożej niż 200 zł, posortowane malejąco po cenie.
SELECT nazwa, cena
FROM produkty
WHERE cena > 200
ORDER BY cena DESC;

-- Zadanie 2: Wyświetl imię, nazwisko i miasto klientów z Wrocławia lub Poznania.
SELECT imie, nazwisko, miasto
FROM klienci
WHERE miasto IN ('Wroclaw', 'Poznan');

-- Zadanie 3: Wyświetl 10 najtańszych produktów (nazwa, cena).
SELECT nazwa, cena
FROM produkty
ORDER BY cena ASC
LIMIT 10;

-- Zadanie 4: Wyświetl zamówienia o statusie 'anulowane', posortowane po dacie zamówienia (najnowsze pierwsze).
SELECT *
FROM zamowienia
WHERE status = 'anulowane'
ORDER BY data_zamowienia DESC;

-- Zadanie 5: Wyświetl produkty, których nazwa zaczyna się na literę „P”.
SELECT *
FROM produkty
WHERE nazwa LIKE 'P%';

-- Zadanie 6: Wyświetl produkty o niskim stanie magazynowym (ilosc_magazyn < 5).
SELECT *
FROM produkty
WHERE ilosc_magazyn < 5;

-- Zadanie 7: Wyświetl klientów zarejestrowanych w ciągu ostatnich 500 dni.
SELECT *
FROM klienci
WHERE data_rejestracji > CURRENT_DATE - INTERVAL '500 days';

-- Zadanie 8: Wyświetl 5 najdroższych
SELECT nazwa, cena FROM produkty ORDER BY cena DESC LIMIT 5;

-- i 5 najtańszych produktów w jednym zestawieniu.
SELECT nazwa, cena FROM produkty ORDER BY cena ASC LIMIT 5;

-- Zadanie 9: Wyświetl produkty dodane w ciągu ostatnich 30 dni.
SELECT *
FROM produkty
WHERE data_dodania >= CURRENT_DATE - INTERVAL '30 days';

-- Zadanie 10: Wyświetl listę unikalnych miast, w których mieszkają klienci (SELECT DISTINCT).
SELECT DISTINCT miasto
FROM klienci;

-- Zadanie 11: Wyświetl nazwiska klientów zapisane wielkimi literami obok oryginalnej wersji (UPPER()).
SELECT nazwisko, UPPER(nazwisko) AS nazwisko_wielkie
FROM klienci;

-- Zadanie 12: Wyświetl produkty, których cena po zaokrągleniu do pełnych złotych mieści się w przedziale 90-110 zł.
SELECT *
FROM produkty
WHERE ROUND(cena) BETWEEN 90 AND 110;

-- Zadanie 13: Wyświetl klientów, których nazwisko kończy się na „ski” LUB imię zaczyna się na „A”.
SELECT *
FROM klienci
WHERE nazwisko LIKE '%ski' OR imie LIKE 'A%';

-- Zadanie 14: Wyświetl 5 zamówień złożonych najwcześniej (najstarsze daty).
SELECT *
FROM zamowienia
ORDER BY data_zamowienia ASC
LIMIT 5;

-- Zadanie 15: Wyświetl produkty, których cena NIE mieści się w przedziale 100-300 zł (NOT BETWEEN).
SELECT *
FROM produkty
WHERE cena NOT BETWEEN 100 AND 300;

-- Zadanie 16: Wyświetl nazwę i liczbę dni od dodania każdego produktu do dziś, posortuj malejąco po tej wartości.
SELECT nazwa, (CURRENT_DATE - data_dodania) AS liczba_dni_od_dodania
FROM produkty
ORDER BY liczba_dni_od_dodania DESC;
