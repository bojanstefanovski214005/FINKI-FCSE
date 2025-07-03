-- Korisnik(kor_ime, ime, prezime, pol, data_rag, data_reg)

-- Korisnik_email(kor_ime*, email)

-- Mesto(id, ime)

-- Poseta(kor_ime*, id_mesto*, datum)

-- Grad(id_mesto*, drzava)

-- Objekt(id_mesto*, adresa, geo_shirina, geo_dolzina, id_grad*)

-- Sosedi(grad1*, grad2*, rastojanie)




-- Да се напише DML израз со кој ќе се вратат името и презимето на корисниците кои во ист ден посетиле објекти кои се наоѓаат во соседни градови. 

SELECT DISTINCT k.ime, k.prezime
FROM Korisnik k
JOIN Poseta p1 ON k.kor_ime = p1.kor_ime
JOIN Objekt o1 ON p1.id_mesto = o1.id_mesto
JOIN Sosedi s ON o1.id_grad = s.grad1 OR o2.id_grad = s.grad2
JOIN Objekt o2 ON p2.id_mesto = o2.id_mesto
JOIN Poseta p2 ON o2.id_mesto = p2.id_mesto AND p1.kor_ime = p2.kor_ime AND p1.datum = p2.datum
WHERE p1.id_mesto != p2.id_mesto AND o2.id_mesto != o1.id_mesto ;
