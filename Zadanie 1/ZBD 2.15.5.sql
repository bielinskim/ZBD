5. Dla bazy danych składania przez klientów zamówień przeanalizuj możliwości zastosowania klastrów tabel.

Baza danych składania przez klientów zamówień może posiadać tabele takie jak: Produkty, Zamówienia, Klienci. Poniżej przedstawiam przykładowe tabele
oraz połączenie ich za pomocą klastrów.

CREATE TABLE Klienci
(   Id_klienta NUMBER(2) PRIMARY KEY,
    Imię VARCHAR2(9),
    Nazwisko VARCHAR2(9),
    Adres VARCHAR2(20));

CREATE CLUSTER Zamówienia_Produkty
(Id_produktu NUMBER(2));

CREATE TABLE Produkty
(   Id_produktu NUMBER(2) PRIMARY KEY,
    Nazwa VARCHAR2(9),
    Cena NUMBER(10,2),
    Ilość_w_magazynie NUMBER(5))
CLUSTER Zamówienia_Produkty (Id_produktu);

CREATE TABLE Zamówienia
(   Id_zamówienia NUMBER(2) PRIMARY KEY,
    Ilość NUMBER(5),
    Data DATE,
    Id_produktu NUMBER(2)NOT NULL REFERENCES Produkty(Id_produktu),
    Id_klienta NUMBER(2)NOT NULL REFERENCES Klienci(Id_klienta))
CLUSTER Zamówienia_Produkty (Id_produktu);

LUB

CREATE TABLE Produkty
(   Id_produktu NUMBER(2) PRIMARY KEY,
    Nazwa VARCHAR2(9),
    Cena NUMBER(10,2),
    Ilość_w_magazynie NUMBER(5));

CREATE CLUSTER Zamówienia_Klienci
(Id_klienta NUMBER(2));

CREATE TABLE Klienci
(   Id_klienta NUMBER(2) PRIMARY KEY,
    Imię VARCHAR2(9),
    Nazwisko VARCHAR2(9),
    Adres VARCHAR2(20))
CLUSTER Zamówienia_Klienci (Id_klienta);

CREATE TABLE Zamówienia
(   Id_zamówienia NUMBER(2) PRIMARY KEY,
    Ilość NUMBER(5),
    Data DATE,
    Id_produktu NUMBER(2)NOT NULL REFERENCES Produkty(Id_produktu),
    Id_klienta NUMBER(2)NOT NULL REFERENCES Klienci(Id_klienta))
CLUSTER Zamówienia_Klienci (Id_klienta);

Próba utworzenia dwóch klastrów jednocześnie (Zamówienia-Klienci, Zamówienia-Produkty) kończy się błędem: