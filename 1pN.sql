CREATE TABLE users(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(150) NOT NULL,
    "email" TEXT
);

CREATE TABLE addresses(
    "id" SERIAL PRIMARY KEY,
    "street" VARCHAR(200) NOT NULL,
    "number" INTEGER,
    "userId" INTEGER NOT NULL,
    FOREIGN KEY ("userId") REFERENCES users("id") ON DELETE CASCADE
);