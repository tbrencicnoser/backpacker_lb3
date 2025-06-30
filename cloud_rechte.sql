-- Benutzer in der Cloud-DB erstellen
CREATE USER 'benutzer1'@'%' IDENTIFIED BY 'Test123!';
CREATE USER 'manager1'@'%' IDENTIFIED BY 'Admin123!';

-- Rechte für benutzer1 (Mitarbeitende)
GRANT SELECT (Vorname, Name, deaktiviert) ON backpacker_lb3.tbl_benutzer TO 'benutzer1'@'%';
GRANT SELECT, UPDATE ON backpacker_lb3.tbl_personen TO 'benutzer1'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON backpacker_lb3.tbl_buchung TO 'benutzer1'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON backpacker_lb3.tbl_positionen TO 'benutzer1'@'%';
GRANT SELECT ON backpacker_lb3.tbl_land TO 'benutzer1'@'%';
GRANT SELECT ON backpacker_lb3.tbl_leistung TO 'benutzer1'@'%';

-- Rechte für manager1 (Management)
GRANT ALL PRIVILEGES ON backpacker_lb3.* TO 'manager1'@'%';

-- Änderungen anwenden
FLUSH PRIVILEGES;
