# 📋 Arbeitsschritte – Protokollierung LB3

## 🗂️ Abschnitt 0 – Definition Infrastruktur
- SMART-Ziele definiert
- db4free.net evaluiert, später auf Clever Cloud gewechselt
- Projekt in GitLab abgelegt

## 🗂️ Abschnitt 1 – Lokale Datenbank
- DDL-Script (`backpacker_ddl_lb3.sql`) ausgeführt
- ERD grafisch erstellt (`ERD_backpacker.png`)
- Rechte laut Zugriffsmatrix per `rechte_dcl.sql` gesetzt
- Daten importiert via CSV
- Fremdschlüssel mit `db_cleanup.sql` ergänzt
- Konsistenz per `test_konsistenz.sql` geprüft

## 🗂️ Abschnitt 2 – Cloud-Vorbereitung
- Clever Cloud Account eingerichtet
- MySQL-Instanz erstellt
- Verbindung über MySQL Workbench vorbereitet
- Verbindung schlug trotz SSL-Deaktivierung & Hotspot fehl
- Scripts für Cloud dennoch vorbereitet

## 🗂️ Abschnitt 3 – Automatisierte Migration
- Rechteübertragung: `cloud_rechte.sql`
- Struktur + Testdaten: `cloud_migration.sql`
- Alle Scripte lokal erfolgreich getestet
- Testprotokolle: `test_berechtigungen.md`, `test_cloud_migration.md`

## 🗂️ Abschnitt 4 – Dokumentation
- README.md enthält alle Hauptabschnitte und technischen Hinweise
- Hinweis zur nicht funktionierenden Cloudverbindung wurde ergänzt
- Alle SQL-Dateien und Screenshots sind im GitLab abgelegt