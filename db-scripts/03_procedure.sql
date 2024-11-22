--Écrire une procédure stockée permettant à un utilisateur de noter une bière. Si l'utilisateur a déjà noté cette bière, la note est mise à jour ; sinon, une nouvelle note est ajoutée.

CREATE OR REPLACE PROCEDURE review_beer(new_rating INTEGER, beer_id INTEGER, user_id INTEGER)
LANGUAGE plpgsql
AS
$$
DECLARE
    r_row_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO r_row_count
    FROM review
    WHERE id_beer = beer_id AND id_user = user_id;

    IF r_row_count < 1 THEN
        INSERT INTO review (rating, id_beer, id_user)
        VALUES (new_rating, beer_id, user_id);
    ELSE
        UPDATE review
        SET rating = new_rating
        WHERE id_beer = beer_id AND id_user = user_id;
    END IF;
END;
$$;

