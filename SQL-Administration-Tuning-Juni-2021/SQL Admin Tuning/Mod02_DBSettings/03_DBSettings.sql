/*
create database testdb

1. Gr��e der DB: 16MB (8MB +8MB)
					  5+2
2. Wachstumsraten: 64MB
					1MB Daten + 10%


==>


*/

create database testdby


use testdby

create table t1 (id int identity, spx char(4100))


set statistics io, time off


insert into t1
select 'XY'
GO 20000


--Wir wollen keine Vergr��erungen haben..
--Wert setzen auf: Wie gro� wird die DB in ca 3 Jahren (Lebenszeit)

