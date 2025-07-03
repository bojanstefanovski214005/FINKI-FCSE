-- Vraboten(ID, ime, prezime, datum_r, datum_v, obrazovanie, plata)

-- Shalterski_rabotnik(ID*)

-- Klient(MBR_k, ime, prezime, adresa, datum)

-- Smetka(MBR_k*, broj, valuta, saldo)

-- Transakcija_shalter(ID, ID_v*, MBR_k*, MBR_k_s*, broj*, datum, suma, tip)

-- Bankomat(ID, lokacija, datum_p, zaliha)


-- Transakcija_bankomat(ID, MBR_k_s*, broj*, ID_b*, datum, suma).



-- Да се напише DML израз со кој ќе се вратат сите клиенти кои направиле барем една трансакција преку банкомат (за сметки кои работат со валута EUR), но не направиле ниту една трансакција преку шалтер од истата сметка, подредени според името на клиентот.

create view prva as
select k.MBR_k,k.ime,k.prezime,k.adresa,k.datum from Klient k
join Transakcija_bankomat tb on tb.MBR_k_s=k.MBR_k;

create view vtora as
select k.MBR_k,k.ime,k.prezime,k.adresa,k.datum from Klient k
join Transakcija_shalter ts on ts.MBR_k_s=k.MBR_k;

select MBR_k,ime,prezime,adresa,datum from prva
except
select MBR_k,ime,prezime,adresa,datum from vtora
order by ime;
