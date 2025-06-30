-- Benutzer erstellen
CREATE USER 'benutzer1'@'localhost' IDENTIFIED BY 'Test123!';
CREATE USER 'manager1'@'localhost' IDENTIFIED BY 'Admin123!';

-- Rechte für benutzer1 (Gruppe: Benutzer)
GRANT SELECT (Vorname, Name, deaktiviert) ON backpacker_lb3.tbl_benutzer TO 'benutzer1'@'localhost';
GRANT SELECT, UPDATE ON backpacker_lb3.tbl_personen TO 'benutzer1'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON backpacker_lb3.tbl_buchung TO 'benutzer1'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON backpacker_lb3.tbl_positionen TO 'benutzer1'@'localhost';
GRANT SELECT ON backpacker_lb3.tbl_land TO 'benutzer1'@'localhost';
GRANT SELECT ON backpacker_lb3.tbl_leistung TO 'benutzer1'@'localhost';

-- Rechte für manager1 (Gruppe: Management)
GRANT ALL PRIVILEGES ON backpacker_lb3.* TO 'manager1'@'localhost';

-- Änderungen aktivieren
FLUSH PRIVILEGES;
