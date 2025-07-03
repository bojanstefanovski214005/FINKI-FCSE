-- Korisnik(kor_ime, ime, prezime, pol, data_rag, data_reg)

-- Korisnik_email(kor_ime*, email)

-- Mesto(id, ime)

-- Poseta(kor_ime*, id_mesto*, datum)

-- Grad(id_mesto*, drzava)

-- Objekt(id_mesto*, adresa, geo_shirina, geo_dolzina, id_grad*)

-- Sosedi(grad1*, grad2*, rastojanie)


-- За секое место се чува изведен атрибут „broj_poseti“ кој го означува бројот на различни корисници кои го посетиле.

-- Да се напише/ат соодветниот/те тригер/и за одржување на конзистентноста на атрибутот „broj_poseti“ при додавање на записите од кои зависи нивната вредност.

create trigger tr
after insert on Poseta
for each row
begin
    update Mesto
    set broj_poseti=(
    select count(distinct kor_ime) 
    from Poseta p
    where id_mesto=new.id_mesto
    )
    where id=new.id_mesto;
end