-- Muzej(shifra, ime_muzej, opis, grad, tip, rabotno_vreme)

-- Izlozba(ime_i, opis, sprat, prostorija, datum_od, datum_do, shifra_muzej*)

-- Izlozba_TD(ime_i*) 

-- Izlozba_TD_ime(ime_i*, ime_td)

-- Izlozba_UD(ime_i*)

-- Umetnicko_delo(shifra, ime, godina, umetnik)

-- Izlozeni(shifra_d*, ime_i*, datum_pocetok, datum_kraj)

-- Да се напишат соодветните DDL изрази за ентитетните множества „МУЗЕЈ“, „УМЕТНИЧКО_ДЕЛО“ и „ИЗЛОЖЕНИ“, како и за евентуалните релации кои произлегуваат од истите, доколку треба да бидат исполнети следните барања:

-- Не сакаме да водиме информации за делата кои биле изложени на изложби кои се избришани од системот.

-- Типот на музејот може да има една од двете вредности, „otvoreno“ или „zatvoreno“.

-- Шифрата на музеите на отворено секогаш почнува со „о“.

create table Muzej(
shifra int primary key, 
ime_muzej varchar(50), 
opis varchar(50), 
grad varchar(50), 
tip varchar(50), 
rabotno_vreme varchar(50),
constraint ctip check (tip in ('otvoreno','zatvoreno')),
constraint otip check ((shifra like 'o%' AND tip = 'otvoreno') OR tip = 'zatvoreno')
);

create table Umetnicko_delo(
shifra int primary key, 
ime varchar(50), 
godina int, 
umetnik varchar(50)
);

create table Izlozeni(
shifra_d int, 
ime_i varchar(50), 
datum_pocetok date, 
datum_kraj date,
primary key (shifra_d, ime_i),
foreign key (shifra_d) references Umetnicko_delo(shifra) on delete cascade on update cascade,
foreign key (ime_i) references Izlozba_UD(ime_i) on delete cascade on update cascade
);




