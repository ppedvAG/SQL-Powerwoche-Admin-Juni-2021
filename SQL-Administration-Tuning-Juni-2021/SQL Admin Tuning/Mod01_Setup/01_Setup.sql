/*
Volumewartungstask

100MB Vergr��erung = 200MB

Lokale Sicherheitsrichtlinie

----------------------------------
xxxxxxxxxxxxxxxxxxxxxxxlkjlfjdslk
----------------------------------


--Einem guten Admin rel egal.. ;-)

Weil DB (so gut wie) nie vergr��ern


Verzeichnisse der DB:

Verz f�r Log und Daten.. weil ds Schreiben soll das Lesen nicht hinder und vice versa
Trenne Daten von Log physikalisch  pro DB 



TEMPDB
#tab ##tab
Zeilenversionierung
IX Wartung
Auslagerungen


Eig Datentr�ger ... evtl pro Daten und Logfile

Soviele Datendateien wie Kerne

T1117  alle DAteien werden immer gleich gro�e

T1118  Uniform Extents - Vermeiden von �atches (int Sperren weil Single Thread auf Seiten/Bl�cke)

Nie manuell eine Datei vergr��ern
---------------------

MAXDOP 8

Anzahl der Kerne, die pro Abfrage max. zur Verf�gung stehen
MAX ist 8


Arbeitsspeicher (Datenpuffer: Datenseiten und Plancache)
MIN:  wird erst umegsetzt wenn erreicht wurde. Wie k�nnte man den Min Wert rausfinden: Taskmanager Max Arbeitssatz
MAX:  Das OS braucht: 2 bis 4 GB wird sofort umgesetzt






*/