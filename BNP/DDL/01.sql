-- Vraboten(ID, ime, prezime, datum_r, datum_v, obrazovanie, plata)
-- Shalterski_rabotnik(ID*)

-- Klient(MBR_k, ime, prezime, adresa, datum)

-- Smetka(MBR_k_s*, broj, valuta, saldo)

-- Transakcija_shalter(ID, ID_v*, MBR_k*, MBR_k_s*, broj*, datum, suma, tip)
-- Bankomat(ID, lokacija, datum_p, zaliha)

-- Transakcija_bankomat(ID, MBR_k_s*, broj*, ID_b*, datum, suma).


-- Да се напишат соодветните DDL изрази за ентитетните множества „ТРАНСАКЦИЈА_ШАЛТЕР“, „ВРАБОТЕН“ и „ШАЛТЕРСКИ_РАБОТНИК“, како и за евентуалните релации кои произлегуваат од истите, доколку треба да бидат исполнети следните барања:

-- Доколку се избрише одреден вработен, информациите за извршените трансакции треба да останат зачувани во базата на податоци.

-- Датумот на извршување на трансакција не смее да биде во периодот од 30.12.2020 до 14.01.2021.

-- Типот на трансакцијата може да има една од двете вредности "uplata" или "isplata"

-- Датумот на раѓање на вработениот мора да биде пред неговиот датум на вработување



CREATE TABLE Vraboten(
ID INT PRIMARY KEY, 
ime VARCHAR(50), 
prezime VARCHAR(50), 
datum_r DATE, 
datum_v DATE, 
obrazovanie VARCHAR(50), 
plata NUMERIC,
CONSTRAINT rag CHECK (datum_r<datum_v)
);

CREATE TABLE Shalterski_rabotnik(
ID INT PRIMARY KEY REFERENCES Vraboten(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Transakcija_shalter(
ID INT PRIMARY KEY, 
ID_v INT , 
MBR_k INT , 
MBR_k_s INT, 
broj INT, 
datum DATE, 
suma NUMERIC, 
tip VARCHAR(50),
FOREIGN KEY (ID_v) REFERENCES Shalterski_rabotnik(ID) ON DELETE SET NULL ON UPDATE CASCADE,
FOREIGN KEY (MBR_k) REFERENCES Klient(MBR_k) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (MBR_k_s,broj) REFERENCES Smetka(MBR_k_s,broj) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT datum CHECK (datum NOT BETWEEN '2020-12-30' AND '2021-01-14'),
CONSTRAINT tipcheck CHECK (tip IN('uplata','isplata'))
);
