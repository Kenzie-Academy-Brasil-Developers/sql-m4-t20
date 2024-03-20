# leitura de múltiplas de tabelas

CREATE TABLE techs (
 "id" SERIAL PRIMARY KEY,
 "name" VARCHAR(150) NOT NULL,
 "level" TEXT,
 "userId" INTEGER NOT NULL,
 FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE CASCADE
);

INSERT INTO "techs" ("name", "level", "userId")
VALUES ('React', 'Avançado', 1),
('NextJS', 'Avançado', 1),
('Express', 'Avançado', 1),
('Postgres', 'Avançado', 1)
RETURNING *;

SELECT * FROM "techs" WHERE "userId" = 1;

INSERT INTO "users" ("name", "email")
VALUES ('Alex', 'alex@email.com') RETURNING *;

INSERT INTO "addresses" ("street", "number", "userId") 
VALUES ('Rua Qualquer', 1234, 1) RETURNING *;

# 1p1 e 1pN

SELECT * FROM users
JOIN addresses ON users."id" = addresses."userId";

INSERT INTO "addresses" ("street", "number", "userId") 
VALUES ('Rua Feliz', 321, 1) RETURNING *;

SELECT users."id" AS "userId",
users."name",
users."email",
addresses."id" AS "addressesId",
addresses."street",
addresses."number"
FROM users JOIN addresses ON users."id" = addresses."userId"; 

# é possível unir tabelas em leituras e retornos

SELECT users."id" AS "userId",
users."name",
users."email",
techs."id" AS "techId",
techs."name", 
techs."level"
FROM users JOIN techs ON users."id" = techs."userId";

INSERT INTO "products" ("name", "price", "description")
VALUES ('Computador', 3000, 'Computador bacana'),
('Notebook', 4000, 'Notebook bonito'),
('Mouse', 200, 'Mouse legal'),
('Teclado', 150, 'Teclado super legal')
RETURNING *;

INSERT INTO "categories" ("name") 
VALUES ('Tecnologia'), ('Computador'), ('Notebook'), ('Acessórios')
RETURNING *;

INSERT INTO "products_categories" ("categoryId", "productId")
VALUES (1, 1), (1, 2), (1, 3), (1, 4), (2, 1), (3, 2), (4, 3), (4, 4);

SELECT * FROM products
JOIN products_categories ON products."id" = products_categories."productId"
JOIN categories ON categories."id" = products_categories."categoryId" 
WHERE categories."id" = 1;

SELECT * FROM products
JOIN products_categories ON products."id" = products_categories."productId"
JOIN categories ON categories."id" = products_categories."categoryId" 
WHERE products."id" = 1;

SELECT * FROM products
JOIN products_categories ON products."id" = products_categories."productId"
WHERE products_categories."categoryId" = 1;