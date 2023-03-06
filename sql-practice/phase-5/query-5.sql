-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
SELECT name 
    FROM
        cat_owners JOIN owners 
        ON (owners.id = cat_owners.owner_id)
        JOIN cats ON (cats.id = cat_owners.cat_id)
    WHERE 
        owners.first_name ='Melynda' 
        AND owners.last_name = 'Abshire'
        AND cat_id = 
            (SELECT cat_id 
                FROM 
                    cat_owners JOIN owners 
                    ON (owners.id = cat_owners.owner_id)
                WHERE (owners.first_name ='George' AND owners.last_name = 'Beatty')
            )
;
