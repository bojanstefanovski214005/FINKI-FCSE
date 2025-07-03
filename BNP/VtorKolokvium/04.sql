
-- Релационата база е дефинирана преку следните релации: 

-- Muzej(shifra, ime_muzej, opis, grad, tip, rabotno_vreme)

-- Izlozba(ime_i, opis, sprat, prostorija, datum_od, datum_do, shifra_muzej*)

-- Izlozba_TD(ime_i*) 

-- Izlozba_TD_ime(ime_i*, ime_td)

-- Izlozba_UD(ime_i*)

-- Umetnicko_delo(shifra, ime, godina, umetnik)

-- Izlozeni(shifra_d*, ime_i*, datum_pocetok, datum_kraj)

-- Да се напише DML израз со кој ќе се врати името на музејот кој имал најмногу изложени различни уметнички дела во 2023 година (уметничките дела кај кои почетниот датум на изложување на некоја изложба на уметнички дела е во 2023 година). 

create view prva as
select distinct *, count(i.shifra_d) as knt from Muzej m
join Izlozba ib on ib.shifra_muzej=m.shifra
join Izlozeni i on i.ime_i=ib.ime_i
group by m.shifra;

create view vtora as
select ime_muzej, max(knt) from prva;

select ime_muzej from vtora;