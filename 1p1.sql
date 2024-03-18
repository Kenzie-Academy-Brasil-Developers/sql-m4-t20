# 1n1 - relacionamento um único recurso de uma tabela com outro único recurso de outra tabela

# Texto
# Número
# Booleanos

CREATE TABLE users(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(150) NOT NULL,
    "email" TEXT
);

CREATE TABLE addresses(
    "id" SERIAL PRIMARY KEY,
    "street" VARCHAR(200) NOT NULL,
    "number" INTEGER,
    "userId" INTEGER UNIQUE NOT NULL,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE CASCADE
);