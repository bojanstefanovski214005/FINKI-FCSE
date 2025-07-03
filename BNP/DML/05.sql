-- Korisnik(k_ime, ime, prezime, tip, pretplata, datum_reg, tel_broj, email)

-- Premium_korisnik(k_ime*, datum, procent_popust)

-- Profil(k_ime*, ime, datum)

-- Video_zapis(naslov, jazik, vremetraenje, datum_d, datum_p)

-- Video_zapis_zanr(naslov*, zanr)

-- Lista_zelbi(ID, naslov*, k_ime*, ime*)

-- Preporaka(ID, k_ime_od*, k_ime_na*, naslov*, datum, komentar, ocena)

-- Да се напише DML израз со кој ќе се вратат корисничките имиња и насловите на препорачаните видео записи за сите премиум корисници кои добиле препорака со оцена поголема од 3 за барем еден видео запис во 2021 година кој е дел од листата на желби во барем еден од нивните профили, подредени според корисничкото име.

select distinct k.k_ime, v.naslov from
Korisnik k
join Premium_korisnik pk on k.k_ime=pk.k_ime
join Preporaka pr on pk.k_ime=pr.k_ime_na
join Video_zapis v on pr.naslov=v.naslov
where v.vremetraenje > 120 and pr.ocena > 3 and pr.datum >= '2021-01-01'
order by k.k_ime asc;