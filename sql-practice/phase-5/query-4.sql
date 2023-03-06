-- Find the first and last names of the owner whose cats are born after the year 2015
-- Your code here
SELECT first_name, last_name 
    FROM cats JOIN cat_owners ON (cats.id = cat_owners.cat_id)
        JOIN owners ON (owners.id = cat_owners.owner_id)
    WHERE cats.birth_year > 2015
;