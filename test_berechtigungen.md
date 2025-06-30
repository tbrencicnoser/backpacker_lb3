# Testprotokoll – Berechtigungen (Cloud)

Die folgenden Benutzer wurden im Cloud-Script definiert:

- `benutzer1`: Mitarbeitende mit eingeschränkten Rechten
- `manager1`: Management mit Vollzugriff

Die Rechte entsprechen exakt der Zugriffsmatrix.  
Das Script `cloud_rechte.sql` wurde lokal getestet, jedoch konnte es aufgrund einer fehlgeschlagenen Cloudverbindung (db4free & Clever Cloud) nicht live ausgeführt werden.

✅ Lokal getestet – keine Fehler bei GRANTs  
❗ Cloud-Ausführung technisch nicht möglich (Verbindungsfehler trotz Hotspot, Workbench, SSL deaktiviert)