-- Релационата база е дефинирана преку следните релации:

-- Lice(id, mbr, ime, prezime, data_r, vozrast, pol)

-- Med_lice(id*, staz)

-- Test(id*, shifra, tip, datum, rezultat, laboratorija)

-- Vakcina(shifra, ime, proizvoditel)

-- Vakcinacija(id_lice*, id_med_lice*, shifra_vakcina*)

-- Vakcinacija_datum(id_lice*, id_med_lice*, shifra_vakcina*, datum)

-- Да се напишат соодветните DDL изрази за ентитетните множества „ВАКЦИНАЦИЈА“ и „ТЕСТ“, како и за евентуалните релации кои произлегуваат од истите, доколку треба да бидат исполнети следните барања:


-- Mедицинските лица не може себеси да си даваат вакцина.

-- Лабораторијата „lab-abc“ прави само „seroloshki“ тестови.

-- Не сакаме да водиме информации за тестовите на лицата кои се избришани од базата на податоци.

create table Vakcinacija(
id_lice INT,
id_med_lice INT,
shifra_vakcina INT,
PRIMARY KEY (id_lice, id_med_lice, shifra_vakcina),
foreign key (id_lice) references Lice(id) ON DELETE SET DEFAULT ON UPDATE CASCADE,
foreign key (id_med_lice) references Med_lice(id) ON DELETE SET DEFAULT ON UPDATE CASCADE,
foreign key (shifra_vakcina) references Vakcina(shifra) ON DELETE SET DEFAULT ON UPDATE CASCADE,
CHECK (id_lice <> id_med_lice)
);

create table Test(
id INT, 
shifra INT, 
tip VARCHAR(50), 
datum DATE, 
rezultat VARCHAR(50), 
laboratorija VARCHAR(50),
primary key (id, shifra),
foreign key (id) references Lice(id) ON DELETE CASCADE ON UPDATE CASCADE,
constraint labor CHECK NOT(laboratorija = 'lab-abc' and tip = 'seroloshki')
);

CREATE TABLE Vakcinacija_datum (
    id_lice INT NOT NULL,
    id_med_lice INT NOT NULL,
    shifra_vakcina INT NOT NULL,
    datum VARCHAR(10) NOT NULL, -- Format: "YYYY-MM-DD"
    PRIMARY KEY (id_lice, id_med_lice, shifra_vakcina, datum),
    FOREIGN KEY (id_lice, id_med_lice, shifra_vakcina) 
        REFERENCES Vakcinacija(id_lice, id_med_lice, shifra_vakcina) ON UPDATE CASCADE ON DELETE SET NULL
);




