CREATE TABLE uutinen (
uutinen_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
uutinen_kuva VARCHAR(255),
uutinen_paiva DATETIME NOT NULL DEFAULT NOW(),
uutinen_aihe VARCHAR(255) NOT NULL,
uutinen_sisalto TEXT NOT NULL
);