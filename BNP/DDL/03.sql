-- Muzicar(id, ime, prezime, datum_ragjanje)

-- Muzicar_instrument(id_muzicar*, instrument)

-- Bend(id, ime, godina_osnovanje)

-- Bend_zanr(id_bend*, zanr)

-- Nastan(id, cena, kapacitet)

-- Koncert(id*, datum, vreme)

-- Festival(id*, ime)

-- Festival_odrzuvanje(id*, datum_od, datum_do)

-- Muzicar_bend(id_muzicar*, id_bend*, datum_napustanje)

-- Festival_bend(id_festival*, datum_od*, id_bend*)

-- Koncert_muzicar_bend(id_koncert*, id_muzicar*, id_bend*)

-- Да се напишат соодветните DDL изрази за ентитетните множества „БЕНД“ и „ФЕСТИВАЛ_БЕНД“, како и за евентуалните релации кои произлегуваат од истите, доколку треба да бидат исполнети следните барања:


-- Бендот со шифра (id или id_bend) 5 не може да настапува на фестивалот со шифра (id_festival) 2.

-- Сакаме да водиме евиденција за настапите на фестивали за бендови што се бришат од системот.

-- Се чуваат податоци само за бендови кои се основани во 1970 или подоцна.

create table Bend(
id int primary key, 
ime varchar(50), 
godina_osnovanje INT,
constraint godinaosnovanje check (godina_osnovanje > 1970)
);

create table Bend_zanr(
id_bend int, 
zanr varchar(50),
primary key (id_bend, zanr),
foreign key (id_bend) references Bend(id) ON UPDATE CASCADE ON DELETE CASCADE
);

create table Festival_bend(
id_festival int, 
datum_od date, 
id_bend int,
primary key (id_festival, datum_od, id_bend),
foreign key (id_festival,datum_od) references Festival_odrzuvanje(id,datum_od) ON UPDATE CASCADE ON DELETE CASCADE,
foreign key (id_bend) references Bend(id) ON UPDATE CASCADE ON DELETE SET DEFAULT,
CHECK (NOT(id_bend=5) and NOT(id_festival=2))
);





