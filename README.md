# 🏨 Projekt LB3 – Backpacker Datenbankmigration

## 👤 Schüler: Tomas Brencic
**Modul:** M141 – Datenbanksysteme in Betrieb nehmen  
**Projekt:** Migration der Access-Datenbank „Backpacker“ in eine relationale MySQL-Datenbank (lokal + Cloud-Vorbereitung)

---

## ✅ 0. Definition Infrastruktur

### SMART-Ziele
- **Spezifisch:** Die bestehende Access-Datenbank wird nach MySQL migriert.
- **Messbar:** Tabellen, Daten und Benutzerrechte sind korrekt übertragen.
- **Aktionsorientiert:** Ich führe alle Schritte selbst aus: Struktur, Rechte, Migration, Tests.
- **Realistisch:** Umsetzbar in 9–12 Lektionen + Heimarbeit.
- **Terminlehrbar:** Bis zum Abgabedatum abgeschlossen.

### Cloud-Evaluation
- Ich habe **db4free.net** ausprobiert → Verbindungsfehler trotz Hotspot und SSL-Konfiguration
- Danach **Clever Cloud** eingerichtet → gleiche Probleme trotz korrektem Setup

🔔 **Fazit:** Cloudverbindung hat nicht funktioniert – Migration wurde lokal vorbereitet und dokumentiert.

---

## 🧱 1. Lokale Datenbank

### 1.1 ERD in 2NF
- ERD wurde basierend auf `backpacker_ddl_lb3.sql` erstellt
- Diagramm: `ERD_backpacker.png`

### 1.2 Benutzer & Rechte
- `rechte_dcl.sql` setzt Rechte nach Zugriffsmatrix
- 2 Benutzer: `benutzer1`, `manager1`
- Rollen wurden lokal erfolgreich getestet

### 1.3 Rechte getestet
- Testprotokoll erstellt (`test_berechtigungen.md`)
- Kein Zugriff auf Passwortspalte, alles wie vorgesehen

### 1.4 CSV-Daten importiert
- CSVs aus `backpacker_lb3.csv.zip` importiert
- `db_cleanup.sql` ergänzt Fremdschlüssel

### 1.5 Konsistenz geprüft
- `test_konsistenz.sql` prüft auf verwaiste Einträge
- Ergebnis: 0 fehlerhafte Referenzen → DB ist konsistent

---

## ☁️ 2. Cloud-Vorbereitung (Clever Cloud)

### 2.1 Setup
- Clever Cloud Account erstellt
- MySQL-Datenbank angelegt
- Zugangsdaten gespeichert

### 2.2 Migration vorbereitet
- `cloud_migration.sql`: Struktur + Testdaten
- `cloud_rechte.sql`: Benutzerrechte für die Cloud

ℹ️ Verbindung zur Cloud-Datenbank konnte **nicht hergestellt** werden  
→ Alle Scripte wurden lokal getestet und dokumentiert

---

## 🔁 3. Automatisierte Migration

### 3.1 Rechte-Migration
- `cloud_rechte.sql` erstellt Benutzer & Rechte
- Lokal getestet, Cloudverbindung fehlgeschlagen

### 3.2 Struktur- & Daten-Migration
- `cloud_migration.sql` enthält `CREATE TABLE` & `INSERT`
- Daten manuell ergänzt als Beispiel (Testpersonen & Länder)

### 3.3 Migration getestet
- `cloud_migration.sql` lokal in neuer DB ausgeführt
- Testprotokoll `test_cloud_migration.md` dokumentiert Erfolg

---

## 🗂️ 4. Protokollierung

Alle Schritte wurden dokumentiert:  
- `protokoll.md` fasst alles zusammen  
- Testprotokolle zeigen, dass alles lokal funktioniert

---

## 📎 Dateienübersicht (für Abgabe)

| Datei                    | Beschreibung                                 |
|--------------------------|----------------------------------------------|
| `rechte_dcl.sql`         | Rechte lokal                                 |
| `cloud_rechte.sql`       | Rechte für Cloud                             |
| `cloud_migration.sql`    | Migration Cloud: Struktur + Daten            |
| `db_cleanup.sql`         | Fremdschlüssel nachgetragen                  |
| `test_konsistenz.sql`    | Konsistenzprüfung                            |
| `test_berechtigungen.md` | Test Benutzerrechte                          |
| `test_cloud_migration.md`| Test Migrationstruktur + Daten               |
| `protokoll.md`           | Übersicht aller erledigten Arbeiten          |
| `README.md`              | Diese Datei                                  |
| `ERD_backpacker.png`     | ERD                    |

---

🔔 **Wichtiger Hinweis:**  
Die Cloudverbindung (db4free & Clever Cloud) konnte nicht hergestellt werden.  
**Alle Migrationen und Tests wurden lokal erfolgreich durchgeführt und dokumentiert.**  
Die SQL-Scripte sind vollständig vorbereitet und bei funktionierender Verbindung direkt einsatzbereit.
