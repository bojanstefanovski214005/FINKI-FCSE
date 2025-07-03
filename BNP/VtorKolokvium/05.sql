-- Muzej(shifra, ime_muzej, opis, grad, tip, rabotno_vreme)

-- Izlozba(ime_i, opis, sprat, prostorija, datum_od, datum_do, shifra_muzej*)

-- Izlozba_TD(ime_i*) 

-- Izlozba_TD_ime(ime_i*, ime_td)

-- Izlozba_UD(ime_i*)

-- Umetnicko_delo(shifra, ime, godina, umetnik)

-- Izlozeni(shifra_d*, ime_i*, datum_pocetok, datum_kraj)


-- За секое уметничко дело се чуваат изведените атрибути „br_izlozbi_otvoreno“ и „br_izlozbi_zatvoreno“ кои го означуваат бројот на изложби одржани во музеи на отворено и бројот на изложби одржани во музеи на затворено на кои било изложено делото.

-- Да се напише/ат соодветниот/те тригер/и за одржување на конзистентноста на атрибутите „br_izlozbi_otvoreno“ и „br_izlozbi_zatvoreno“ при додавање на записите од кои зависи нивната вредност.


create trigger tr
after insert on Izlozeni
for each row
begin
    update Umetnicko_delo
    set br_izlozbi_otvoreno=(
    select count(*)
    from Izlozeni iz
    join Izlozba i on i.ime_i=iz.ime_i
    join Muzej m on m.shifra=i.shifra_muzej
    where m.tip='otvoreno' and iz.shifra_d=new.shifra_d
    ),
    br_izlozbi_zatvoreno=(
    select count(*)
    from Izlozeni iz
    join Izlozba i on i.ime_i=iz.ime_i
    join Muzej m on m.shifra=i.shifra_muzej
    where m.tip='zatvoreno' and iz.shifra_d=new.shifra_d
    )
    where shifra=new.shifra_d;
end