-- Lice(id, mbr, ime, prezime, data_r, vozrast, pol)

-- Med_lice(id*, staz)

-- Test(id*, shifra, tip, datum, rezultat, laboratorija)

-- Vakcina(shifra, ime, proizvoditel)

-- Vakcinacija(id_lice*, id_med_lice*, shifra_vakcina*)

-- Vakcinacija_datum(id_lice*, id_med_lice*, shifra_vakcina*, datum)

-- Да се напише DML израз со кој ќе се врати информација за тоа колкав процент од лицата кои имале позитивен тест во август 2021 не биле целосно вакцинирани (вакцинирани со две дози вакцина).

-- Забелешка: Форматот на датум е 'YYYY-MM-DD'.

create view vak1 as
select *, COUNT(v.id_lice) as vakcini from Lice l
join Test t on l.id=t.id
join Vakcinacija_datum v on l.id=v.id_lice
where t.rezultat='pozitiven' and t.datum like '2021-08-__'
group by l.id
having COUNT(v.id_lice) > 1;

create view vak2 as
select distinct l.id from lice l
join Test t on l.id=t.id
where t.rezultat='pozitiven' and t.datum like '2021-08-__';

create view prvo as select count(vak1.id) as prvi from vak1;

create view vtoro as select count(vak2.id) as vtori from vak2;

select 100-cast(prvo.prvi as float)/cast(vtoro.vtori as float)*100 as procent from prvo,vtoro;

