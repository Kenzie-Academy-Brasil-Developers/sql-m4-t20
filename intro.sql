CREATE USER "alex123" CREATEROLE CREATEDB SUPERUSER PASSWORD '1234';

CREATE DATABASE t20_postgres;

// \l listando todos os bancos de dados

// \c seleciona um banco de dados

// Divido em tabelas

// String, Number e Boolean

// Texto
// CHAR(25) - exatamente a quantidade de caracteres definido
// VARCHAR(150) - no máximo a quantidade de caracteres definido
// TEXT - Livre

// Numero
// INT - Números sem decimais

// Todo comando de SQL vai precisar do ; 

CREATE TABLE "recipes" (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(150) NOT NULL,
    "description" TEXT,
    "createdAt" TIMESTAMP NOT NULL,
    "updatedAt" TIMESTAMP
);

CREATE TABLE "products" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(250) NOT NULL,
    "description" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "createdAt" TIMESTAMP NOT NULL,
    "updatedAt" TIMESTAMP
);

// listar as tabelinhas \dt - informação resumida ou \dt+ informação completa