-- Muzej(shifra, ime_muzej, opis, grad, tip, rabotno_vreme)

-- Izlozba(ime_i, opis, sprat, prostorija, datum_od, datum_do, shifra_muzej*)

-- Izlozba_TD(ime_i*) 

-- Izlozba_TD_ime(ime_i*, ime_td)

-- Izlozba_UD(ime_i*)

-- Umetnicko_delo(shifra, ime, godina, umetnik)

-- Izlozeni(shifra_d*, ime_i*, datum_pocetok, datum_kraj)

-- Да се напише DML израз со кој ќе се вратат сите уметници кои немале ниту едно уметничко дело изложено во музеј на затворено подредени според името на уметникот. 

select umetnik from Umetnicko_delo
EXCEPT
select umetnik from Umetnicko_delo um
join Izlozeni i on i.shifra_d=um.shifra
join Izlozba izb on izb.ime_i=i.ime_i
join Muzej m on m.shifra=izb.shifra_muzej
where m.tip='zatvoreno'