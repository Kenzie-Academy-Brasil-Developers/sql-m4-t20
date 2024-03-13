UPDATE "products" SET price = 4500 WHERE id = 1;

UPDATE "products" 
SET "price" = 5000, "description" = 'Notebook MUITOOOOOO bonito' 
WHERE id = 1;

UPDATE "products" 
SET ("name", "price") = ROW ('Computador X Game Z', 2500) 
WHERE id = 4
RETURNING *;

UPDATE "products" 
SET price = 3000
WHERE id = 4
RETURNING *;