CREATE TABLE "products" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(250) NOT NULL,
    "description" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "createdAt" TIMESTAMP NOT NULL,
    "updatedAt" TIMESTAMP
);

// aspas duplas existem para que o texto seja case sensitive 
// aspas simples vão representar valores do tipo texto

// inserção simples
INSERT INTO "products" ("name", "description", "price", "createdAt") 
VALUES ('Notebook', 'Notebook bonito', 3500, '2024-03-13');

// inserção múltipla
INSERT INTO "products" ("name", "description", "price", "createdAt") 
VALUES ('Mouse', 'Mouse bonito', 150, '2024-03-13'),
('Teclado', 'Teclado bonito', 100, '2024-03-13');

// returning
INSERT INTO "products" ("name", "description", "price", "createdAt") 
VALUES ('Computador', 'Notebook bonito', 4500, '2024-03-13') RETURNING *;