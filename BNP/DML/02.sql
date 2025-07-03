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



-- Да се напише DML израз со кој ќе се вратат имињата и презимињата на гитаристите (музичарите кои свират на инструментот гитара) кои настапиле на концерт заедно со бенд откако го напуштиле. Датумот на настап на музичарот заедно со бендот е датумот на самиот концерт. Резултатите треба да се подредени според името во растечки редослед. 


select distinct ime, prezime from
Muzicar, Muzicar_instrument, Koncert_muzicar_bend, Koncert, Muzicar_bend
where Muzicar.id=Muzicar_instrument.id_muzicar and 
Muzicar.id=Koncert_muzicar_bend.id_muzicar and Koncert.id=Koncert_muzicar_bend.id_koncert and
Muzicar_bend.id_muzicar=Muzicar.id and Muzicar_bend.datum_napustanje < Koncert.datum and
Muzicar_instrument.instrument='gitara'