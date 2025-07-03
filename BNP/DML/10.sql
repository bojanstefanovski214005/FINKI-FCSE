-- Korisnik(k_ime, ime, prezime, tip, pretplata, datum_reg, tel_broj, email)

-- Premium_korisnik(k_ime*, datum, procent_popust)

-- Profil(k_ime*, ime, datum)

-- Video_zapis(naslov, jazik, vremetraenje, datum_d, datum_p)

-- Video_zapis_zanr(naslov*, zanr)

-- Lista_zelbi(naslov*, k_ime*, ime*)

-- Preporaka(ID, k_ime_od*, k_ime_na*, naslov*, datum, komentar, ocena)


-- Да се напише DML израз со кој ќе се даде одговор на следното барање:


-- Да се врати список со насловите на видеата, времетраењето и бројот на препораки, за видеа кои се во листата на желби на најмалку два различни профили.

create view prva as
select *, count(distinct lz.k_ime) as broj from Lista_zelbi lz
group by lz.naslov
having broj > 1;

select pr.naslov, vz.vremetraenje, count(p.ID) as broj_preporaki from prva pr
left join Preporaka p on p.naslov=pr.naslov
join Video_zapis vz on vz.naslov=pr.naslov
group by pr.naslov;