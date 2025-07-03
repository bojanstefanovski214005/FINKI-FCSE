-- Korisnik(k_ime, ime, prezime, tip, pretplata, datum_reg, tel_broj, email)

-- Premium_korisnik(k_ime*, datum, procent_popust)

-- Profil(k_ime*, ime, datum)

-- Video_zapis(naslov, jazik, vremetraenje, datum_d, datum_p)

-- Video_zapis_zanr(naslov*, zanr)

-- Lista_zelbi(naslov*, k_ime*, ime*)

-- Preporaka(ID, k_ime_od*, k_ime_na*, naslov*, datum, komentar, ocena)


-- Да се напише DML израз со кој ќе се даде одговор на следното барање:


-- Да се вратат имињата на сите корисници кои имаат дадено препораки за видеа кои никој од нивните профили не ги има во листата на желби.

select distinct p.k_ime_od from Korisnik k 
join Preporaka p on p.k_ime_od=k.k_ime 
where p.naslov in(select p.naslov from Korisnik k 
join Preporaka p on p.k_ime_od=k.k_ime 
join Lista_zelbi lz on lz.k_ime=k.k_ime)
or p.naslov not in(select p.naslov from Korisnik k 
join Preporaka p on p.k_ime_od=k.k_ime 
join Lista_zelbi lz on lz.k_ime=k.k_ime)
