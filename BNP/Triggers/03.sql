	
-- Релационата база е дефинирана преку следните релации:

-- Lice(id, mbr, ime, prezime, data_r, vozrast, pol)

-- Med_lice(id*, staz)

-- Test(id*, shifra, tip, datum, rezultat, laboratorija)

-- Vakcina(shifra, ime, proizvoditel)

-- Vakcinacija(id_lice*, id_med_lice*, shifra_vakcina*)

-- Vakcinacija_datum(id_lice*, id_med_lice*, shifra_vakcina*, datum)

-- Во табелата Lice е креиран изведен атрибут „celosno_imuniziran“ кој прима вредности 0 и 1 и кажува дали лицето е целосно имунизирано (вакцинирано со барем две дози вакцина). Дополнително, пресметана е моменталната вредност на овој атрибут за секое лице.

-- Да се напише/ат тригер/и за одржување на вредноста на атрибутот „celosno_imuniziran“ при додавање на записите од кои зависи неговата вредност.

CREATE TRIGGER trg_update_celosno_imuniziran_alt
AFTER INSERT ON Vakcinacija_datum
FOR EACH ROW
BEGIN
    -- Ажурирање на celosno_imунiziran врз основа на бројот на вакцинации
    UPDATE Lice
    SET celosno_imuniziran = 1
    WHERE id = NEW.id_lice and (
        SELECT  COUNT(*)
        FROM Vakcinacija_datum
        WHERE id_lice = NEW.id_lice
    )>1;
END