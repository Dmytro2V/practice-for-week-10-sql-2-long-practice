-- Find All the Toys for Hermione's cats
-- Your code here
SELECT toys.name 
    FROM cat_owners JOIN cats ON (cat_owners.cat_id = cats.id) 
        JOIN owners ON (owner_id = owners.id)
        JOIN toys ON (toys.cat_id = cats.id)
    WHERE first_name = 'Hermione'
;
SELECT toys.name 
    FROM cat_owners 
        JOIN owners ON (owner_id = owners.id)
        JOIN toys ON (toys.cat_id = cat_owners.cat_id)
    WHERE first_name = 'Hermione'
;