/*
master
Logins (Zutritt zum SQL Server)
Datenbanken
Konfiguration

muss man master sichern: auf jeden Fall



model
Vorlage f�r neue DBs
create database testdb.. Kopie der model
�nderungen an der model haben Auswirkung auf neue DBs

muss man die model DB sichern...bei �nderungen
Tipp: n�...  lieber Script erfassen..
USE [master]
GO
ALTER DATABASE [model] MODIFY FILE ( NAME = N'modeldev', SIZE = 10240KB )
GO
ALTER DATABASE [model] MODIFY FILE ( NAME = N'modellog', SIZE = 10240KB )
GO


msdb--zeitl gr��ter Aufwand bei Verlust
DB f�r den AGENT
Jobs, Zeitpl�ne, Wartungspl�ne, SSIS Pakete, EMAIL
muss man die sichern: ja auf jeden Fall


tempdb
#tempTabellen ##tabelle tempor�re Tabellen
Zeilenversionierung
Sortierarbeiten
Indizes
Auslagerungen


Wartungsplan!!!

muss man die tempdb sichern: n� geht gar nicht, will nur schnell sein.


*/