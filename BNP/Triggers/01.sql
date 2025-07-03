	
-- Релационата база е дефинирана преку следните релации: 


-- Korisnik(kor_ime, ime, prezime, pol, data_rag, data_reg)

-- Korisnik_email(kor_ime*, email)

-- Mesto(id, ime)

-- Poseta(kor_ime*, id_mesto*, datum)

-- Grad(id_mesto*, drzava)

-- Objekt(id_mesto*, adresa, geo_shirina, geo_dolzina, id_grad*)

-- Sosedi(grad1*, grad2*, rastojanie)


-- За секој корисник се чува изведен атрибут „broj_poseti“ кој го означува бројот на различни места кои ги посетиле.

-- Да се напише/ат соодветниот/те тригер/и за одржување на конзистентноста на атрибутот „broj_poseti“ при додавање на записите од кои зависи нивната вредност.

create trigger tr
after insert on Poseta
for each row
begin 
    update Korisnik
    set broj_poseti=(
    select count(distinct id_mesto)
    from Poseta p
    where kor_ime=new.kor_ime
    )
    where kor_ime=new.kor_ime;
end
