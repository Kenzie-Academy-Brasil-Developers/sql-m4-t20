SELECT * FROM "products";

SELECT "name", "price" FROM "products";

// WHERE

SELECT * FROM "products" WHERE id = 2;

SELECT * FROM "products" WHERE price > 2000;

// LIKE - é case sensitive

# começam com o com o texto

SELECT * FROM "products" WHERE name LIKE 'Note%';

# terminam com o texto

SELECT * FROM "products" WHERE name LIKE '%book';

# contém o texto

SELECT * FROM "products" WHERE name LIKE '%tebo%';

// ILIKE - não case sensitive

SELECT * FROM "products" WHERE name ILIKE 'note%';