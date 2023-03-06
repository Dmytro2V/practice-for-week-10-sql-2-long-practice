-- Update the toy with the name of "Cheetos" to have a name of "Pooky"
-- Your code here
.print ------------ before
SELECT * FROM cats;
.print .
SELECT * FROM toys;
UPDATE toys 
    SET name = 'Pooky'
    WHERE toys.name = 'Cheetos' 
    AND cat_id = (
        SELECT id FROM cats 
            WHERE name = 'Garfield'
            LIMIT 1
        )
;
.print ------- updated
SELECT * FROM cats;
.print .
SELECT * FROM toys;
