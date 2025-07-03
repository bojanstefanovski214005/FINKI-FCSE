-- Lice(id, mbr, ime, prezime, data_r, vozrast, pol)

-- Med_lice(id*, staz)

-- Test(id*, shifra, tip, datum, rezultat, laboratorija)

-- Vakcina(shifra, ime, proizvoditel)

-- Vakcinacija(id_lice*, id_med_lice*, shifra_vakcina*)

-- Vakcinacija_datum(id_lice*, id_med_lice*, shifra_vakcina*, datum)

-- Да се напише DML израз со кој ќе се вратат матичните броеви на лицата (сортирани во растечки редослед) кои биле позитивни и потоа примиле барем една доза вакцина.

select DISTINCT Lice.id from Lice, Test, Vakcinacija_datum
where Lice.id=Test.id and Lice.id=Vakcinacija_datum.id_lice and (Test.rezultat='pozitiven' and Test.datum < Vakcinacija_datum.datum)
order by Lice.id asc;

