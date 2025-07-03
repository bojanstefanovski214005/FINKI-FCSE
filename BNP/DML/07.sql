-- Korisnik(kor_ime, ime, prezime, pol, data_rag, data_reg)

-- Korisnik_email(kor_ime*, email)

-- Mesto(id, ime)

-- Poseta(kor_ime*, id_mesto*, datum)

-- Grad(id_mesto*, drzava)

-- Objekt(id_mesto*, adresa, geo_shirina, geo_dolzina, id_grad*)

-- Sosedi(grad1*, grad2*, rastojanie)




-- Да се напише DML израз со кој ќе се врати името на градот во кој се наоѓа објектот што бил посетен најголем број пати.

WITH Broj_poseti AS (SELECT P.id_mesto AS id_mesto, COUNT(*) AS broj_poseti
FROM Poseta P JOIN Objekt O ON P.id_mesto=O.id_mesto
GROUP BY P.id_mesto),
Max_poseti AS (SELECT MAX(broj_poseti) AS max_poseti
FROM Broj_poseti),
Max_poseteni_objekti AS (SELECT BP.id_mesto AS id_mesto
FROM Broj_poseti BP,Max_poseti MP
WHERE BP.broj_poseti=MP.max_poseti)
SELECT DISTINCT M.ime
FROM Objekt O, Mesto M ON O.id_grad=M.id
WHERE id_grad IN (SELECT id_grad
FROM Max_poseteni_objekti MPO JOIN Objekt O ON MPO.id_mesto=O.id_mesto)