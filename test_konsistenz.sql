-- Buchungen ohne gültige Person
SELECT * FROM tbl_buchung
WHERE Personen_FS NOT IN (SELECT Personen_ID FROM tbl_personen);

-- Buchungen ohne gültiges Land
SELECT * FROM tbl_buchung
WHERE Land_FS NOT IN (SELECT Land_ID FROM tbl_land);

-- Positionen ohne gültige Buchung
SELECT * FROM tbl_positionen
WHERE Buchungs_FS NOT IN (SELECT Buchungs_ID FROM tbl_buchung);

-- Positionen ohne gültigen Benutzer
SELECT * FROM tbl_positionen
WHERE Benutzer_FS NOT IN (SELECT Benutzer_ID FROM tbl_benutzer);

-- Positionen ohne gültige Leistung
SELECT * FROM tbl_positionen
WHERE Leistung_FS NOT IN (SELECT LeistungID FROM tbl_leistung);
