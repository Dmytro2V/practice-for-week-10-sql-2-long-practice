-- Find Hermione's cats
-- Your code here
.print Find Hermione's cats


SELECT name FROM cats 
    WHERE id IN 
    (SELECT cat_id from cat_owners 
        WHERE owner_id = 
            (SELECT id FROM owners 
                WHERE first_name = 'Hermione'))
;

SELECT name 
    FROM cat_owners JOIN cats ON (cat_id = cats.id) 
        JOIN owners ON (owner_id = owners.id)
    WHERE first_name = 'Hermione'
;