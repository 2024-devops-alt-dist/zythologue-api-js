--Écrire un déclencheur (trigger) pour vérifier que l'ABV (taux d'alcool) est compris entre 0 et 20 avant l'ajout de chaque bière.
/* 
CREATE OR REPLACE FUNCTION check_abv()
RETURNS TRIGGER AS $$
BEGIN
    -- Vérifier si l'ABV est compris entre 0 et 20
    IF NEW.abv < 0 OR NEW.abv > 20 THEN
        RAISE EXCEPTION 'Le taux d''alcool (ABV) doit être compris entre 0 et 20, mais vous avez inséré %', NEW.abv;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER check_beer_abv_before_insert ON beer;

CREATE TRIGGER check_beer_abv_before_insert
BEFORE INSERT ON beer
FOR EACH ROW
EXECUTE FUNCTION check_abv(); */