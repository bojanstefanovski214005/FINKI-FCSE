-- Korisnik(k_ime, ime, prezime, tip, pretplata, datum_reg, tel_broj, email)

-- Premium_korisnik(k_ime*, datum, procent_popust)

-- Profil(k_ime*, ime, datum)

-- Video_zapis(naslov, jazik, vremetraenje, datum_d, datum_p)

-- Video_zapis_zanr(naslov*, zanr)

-- Lista_zelbi(naslov*, k_ime*, ime*)

-- Preporaka(ID, k_ime_od*, k_ime_na*, naslov*, datum, komentar, ocena)

-- Да се напише DML израз со кој ќе се вратат имињата и презимињата на сите премиум корисници кои препорачале видео запис со времетраење подолго од 2 часа и за кој оставиле оцена поголема или еднаква на 4, подредени според датумот на регистрација во растечки редослед.

-- *времетраењето се чува во минути 

select distinct k.ime, k.prezime from
Korisnik k
join Premium_korisnik pk on k.k_ime=pk.k_ime
join Preporaka pr on pk.k_ime=pr.k_ime_od
join Video_zapis v on pr.naslov=v.naslov
where v.vremetraenje > 120 and pr.ocena >= 4
order by k.datum_reg asc;