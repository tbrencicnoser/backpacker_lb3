# Testprotokoll – Migration (Cloud)

Das Script `cloud_migration.sql` wurde lokal in MySQL Workbench getestet.

✅ Tabellen wie `tbl_personen`, `tbl_land` usw. wurden korrekt erstellt  
✅ `INSERT INTO`-Befehle führten zu korrekten Dateninhalten  
✅ Fremdschlüsselbeziehungen wurden mit `ALTER TABLE` manuell ergänzt und funktionierten

❗ Die Ausführung in der echten Cloud-Datenbank war aufgrund technischer Probleme mit db4free.net und Clever Cloud nicht möglich. Die Scripts sind vollständig vorbereitet und könnten bei funktionierender Verbindung direkt ausgeführt werden.