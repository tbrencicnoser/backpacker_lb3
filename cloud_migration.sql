-- Datenbank anlegen
CREATE DATABASE IF NOT EXISTS backpacker_lb3;
USE backpacker_lb3;

-- Tabellenstruktur (gekürzt)
CREATE TABLE tbl_personen (
  Personen_ID int AUTO_INCREMENT PRIMARY KEY,
  Vorname TEXT,
  Name TEXT,
  Telefon TEXT
);

CREATE TABLE tbl_land (
  Land_ID int PRIMARY KEY,
  Land TEXT
);

-- ... (weitere CREATE TABLEs folgen – siehe DDL-Datei)

-- Beispiel-Daten einfügen
INSERT INTO tbl_land (Land_ID, Land) VALUES
(1, 'Schweiz'),
(2, 'Deutschland');

INSERT INTO tbl_personen (Vorname, Name, Telefon) VALUES
('Anna', 'Meier', '0781234567'),
('Tom', 'Brencic', '0769876543');
