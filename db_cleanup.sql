-- Fremdschlüssel hinzufügen (Datenbank muss sauber importiert sein)

-- 1. Buchung → Personen
ALTER TABLE tbl_buchung
ADD CONSTRAINT fk_buchung_person
FOREIGN KEY (Personen_FS) REFERENCES tbl_personen(Personen_ID);

-- 2. Buchung → Land
ALTER TABLE tbl_buchung
ADD CONSTRAINT fk_buchung_land
FOREIGN KEY (Land_FS) REFERENCES tbl_land(Land_ID);

-- 3. Positionen → Buchung
ALTER TABLE tbl_positionen
ADD CONSTRAINT fk_pos_buchung
FOREIGN KEY (Buchungs_FS) REFERENCES tbl_buchung(Buchungs_ID);

-- 4. Positionen → Benutzer
ALTER TABLE tbl_positionen
ADD CONSTRAINT fk_pos_benutzer
FOREIGN KEY (Benutzer_FS) REFERENCES tbl_benutzer(Benutzer_ID);

-- 5. Positionen → Leistung
ALTER TABLE tbl_positionen
ADD CONSTRAINT fk_pos_leistung
FOREIGN KEY (Leistung_FS) REFERENCES tbl_leistung(LeistungID);
