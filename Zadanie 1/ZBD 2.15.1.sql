Poziom zewnętrzny nr. 1 (Dział HR i Administracji)

Perspektywa: Pracownicy_stanowiska (Id_prac, Imię, Nazwisko, Stanowisko)

CREATE VIEW Pracownicy_stanowiska (Id_prac, Imię, Nazwisko, Stanowisko)
AS SELECT (p.Id_prac, p.Imię, p.Nazwisko, z.Stanowisko)
FROM Pracownicy p, Zatrudnienie z
WHERE p.Id_prac = z.Id_prac

Perspektywa: Pracownicy_zatrudnienie (Id_prac, Imię, Nazwisko, Data_pocz, Data_koniec)

CREATE VIEW Pracownicy_zatrudnienie (Id_prac, Imię, Nazwisko, Data_pocz, Data_koniec)
AS SELECT (p.Id_prac, p.Imię, p.Nazwisko, z.Data_pocz, z.Data_koniec)
FROM Pracownicy p, Zatrudnienie z
WHERE p.Id_prac = z.Id_prac

Perspektywa: Pracownicy_obecni (Id_prac, Imię, Nazwisko, Stanowisko, Data_pocz)

CREATE VIEW Pracownicy_obecni (Id_prac, Imię, Nazwisko, Stanowisko, Data_pocz)
AS SELECT (p.Id_prac, p.Imię, p.Nazwisko, p.Stanowisko, z.Data_pocz)
FROM Pracownicy p, Zatrudnienie 
WHERE p.Id_prac = z.Id_prac AND z.Data_koniec IS NULL 

Perspektywa: Pracownicy_zarobki (Id_prac, Imię, Nazwisko, Zarobki)

CREATE VIEW Pracownicy_zarobki (Id_prac, Imię, Nazwisko, Zarobki)
AS SELECT (p.Id_prac, p.Imię, p.Nazwisko, z.Zarobki)
FROM Pracownicy p, Zatrudnienie z
WHERE p.Id_prac = z.Id_prac

Perspektywa: Pracownicy_dane_osobowe (Id_prac, Imię, Nazwisko, Data_urodzenia, Adres)

CREATE VIEW Pracownicy_dane_osobowe 
AS SELECT *
FROM Pracownicy

Poziom zewnętrzny nr. 2 (Dział Sprzedaży)

Perspektywa: Produkty_dostepne (Id_produktu, Nazwa, Cena, Ilość_w_magazynie)

CREATE VIEW Produkty_dostepne (Id_produktu, Nazwa, Cena, Ilość_w_magazynie)
AS SELECT *
FROM Produkty p
WHERE p.Ilość_w_magazynie > 0 AND p.Ilość_w_magazynie IS NOT NULL

Perspektywa: Klienci (Id_klienta, Imie, Nazwisko, Adres)

CREATE VIEW Klienci (Id_klienta, Imie, Nazwisko, Adres)
AS SELECT *
FROM Klienci

Perspektywa: Lista_sprzedaży (Id_sprzedaży, Id_klienta, Id_produktu, Nazwa, Cena, Ilość, Data, Id_prac, Imię, Nazwisko)

CREATE VIEW Lista_sprzedaży (Id_sprzedaży, Id_klienta, Id_produktu, Nazwa, Cena, Ilość, Data, Id_prac, Imię, Nazwisko)
AS SELECT (s.Id_sprzedaży, k.Id_klienta, p.Id_produktu, p.Nazwa, p.Cena, s.Ilość, s.Data, pr.Id_prac, pr.Imię, pr.Nazwisko)
FROM Sprzedaż s, Klienci k, Produkty p, Pracownicy pr

Poziom zewnętrzny nr. 3 (Dział Obsługi klienta)

Perspektywa: Klienci (Id_klienta, Imie, Nazwisko, Adres)

CREATE VIEW Klienci (Id_klienta, Imie, Nazwisko, Adres)
AS SELECT *
FROM Klienci

Perspektywa: Lista_sprzedaży (Id_sprzedaży, Id_klienta, Id_produktu, Nazwa, Ilość, Data)

CREATE VIEW Lista_sprzedaży (Id_sprzedaży, Id_klienta, Id_produktu, Nazwa, Ilość, Data)
AS SELECT (s.Id_sprzedaży, k.Id_klienta, p.Id_produktu, p.Nazwa, s.Ilość, s.Data)
FROM Sprzedaż s, Klienci k, Produkty p

Perspektywa: Lista_produktów (Id_produktu, Nazwa)

CREATE VIEW Lista_produktów (Id_produktu, Nazwa)
AS SELECT (Id_produktu, Nazwa)
FROM Produkty

Poziom zewnętrzny nr. 4 (Dział Biura Rachunkowego)

Perspektywa: Lista_sprzedaży (Id_sprzedaży, Id_klienta, Id_produktu, Nazwa, Cena, Ilość, Data)

CREATE VIEW Lista_sprzedaży (Id_sprzedaży, Id_klienta, Id_produktu, Nazwa, Cena, Ilość, Data)
AS SELECT (s.Id_sprzedaży, k.Id_klienta, p.Id_produktu, p.Nazwa, p.Cena, s.Ilość, s.Data)
FROM Sprzedaż s, Klienci k, Produkty p

Poziom zewnętrzny nr. 5 (Dział Marketingu)

Perspektywa: Lista_produktów (Id_produktu, Nazwa, Cena)

CREATE VIEW Lista_produktów (Id_produktu, Nazwa, Cena)
AS SELECT (Id_produktu, Nazwa, Cena)
FROM Produkty

