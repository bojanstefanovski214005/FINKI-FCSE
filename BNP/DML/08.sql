-- Korisnik(k_ime, ime, prezime, tip, pretplata, datum_reg, tel_broj, email)

-- Premium_korisnik(k_ime*, datum, procent_popust)

-- Profil(k_ime*, ime, datum)

-- Video_zapis(naslov, jazik, vremetraenje, datum_d, datum_p)

-- Video_zapis_zanr(naslov*, zanr)

-- Lista_zelbi(naslov*, k_ime*, ime*)

-- Preporaka(ID, k_ime_od*, k_ime_na*, naslov*, datum, komentar, ocena)

-- Да се напише DML израз со кој ќе се вратат корисничкото име и бројот на видео записи кои му биле препорачани на корисникот кој дал најголем број на препораки.

-- Напомена: при оценување на оваа задача нема да се признаваат решенија со користење на ORDER BY.

create view prva as
select *, count(p.k_ime_od) as brojani from Korisnik k
join Preporaka p on k.k_ime=p.k_ime_od
group by p.k_ime_od;

create view vtora as
select k_ime from prva
where brojani=(select max(brojani) from prva);

select k.k_ime, count(p.k_ime_na) as dobieni_preporaki from vtora k
join Preporaka p on k.k_ime=p.k_ime_na
group by p.k_ime_na;