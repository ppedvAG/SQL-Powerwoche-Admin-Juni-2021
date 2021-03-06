--Datenbankoptimierungsratgegeber
/*
benötigt SQL Abfragen zur Optimierung

--Profiler, Abfragespeicher (SQL 2016), einzelene Abfrage, Profiler Tabelle
--Planchache (evtl nicht so günstig, da Plancache nicht unbedingt den typischen Workload darstellt

--Alle Tabelle optimieren lassen
--DTA nicht "abschiessen", sonst bleiben unsichtbar _dta_indizes übrig

Wählt man Columnstore, dann wird Partitionierung ausgeschlossen..
--(ohne Angabe von Gründen)


Alle Arten von Indizes wählen

Zeit begrenzen, falls sehr große DBS und umfangreiche Aufzeichnung vorliegt.

Erweiterte Optionen--> Haken setzen




*/



use [Northwind]
go

CREATE PARTITION FUNCTION [_dta_pf__4149](smallint) AS RANGE RIGHT FOR VALUES (2)
go

CREATE PARTITION SCHEME [_dta_ps__5201] AS PARTITION [_dta_pf__4149] TO ([PRIMARY], [PRIMARY])
go

DROP INDEX [ProductsOrder_Details] ON [dbo].[Order Details]
go

DROP INDEX [ProductID] ON [dbo].[Order Details]
go

DROP INDEX [OrdersOrder_Details] ON [dbo].[Order Details]
go

DROP INDEX [OrderID] ON [dbo].[Order Details]
go

DROP INDEX [ShippedDate] ON [dbo].[Orders]
go

DROP INDEX [OrderDate] ON [dbo].[Orders]
go

DROP INDEX [ShipPostalCode] ON [dbo].[Orders]
go

DROP INDEX [CustomerID] ON [dbo].[Orders]
go

DROP INDEX [EmployeeID] ON [dbo].[Orders]
go

DROP INDEX [ShippersOrders] ON [dbo].[Orders]
go

DROP INDEX [EmployeesOrders] ON [dbo].[Orders]
go

DROP INDEX [City] ON [dbo].[Customers]
go

DROP INDEX [Region] ON [dbo].[Customers]
go

DROP INDEX [PostalCode] ON [dbo].[Customers]
go

DROP INDEX [CompanyName] ON [dbo].[Customers]
go

DROP INDEX [LastName] ON [dbo].[Employees]
go

DROP INDEX [PostalCode] ON [dbo].[Employees]
go

DROP INDEX [CategoryID] ON [dbo].[Products]
go

DROP INDEX [SupplierID] ON [dbo].[Products]
go

DROP INDEX [SuppliersProducts] ON [dbo].[Products]
go

DROP INDEX [CategoriesProducts] ON [dbo].[Products]
go

DROP INDEX [ProductName] ON [dbo].[Products]
go

DROP INDEX [PostalCode] ON [dbo].[Suppliers]
go

DROP INDEX [CompanyName] ON [dbo].[Suppliers]
go

DROP INDEX [CategoryName] ON [dbo].[Categories]
go

CREATE CLUSTERED INDEX [_dta_index_ku2_c_10_738101670_0_K10_K17] ON [dbo].[ku2]
(
	[Freight] ASC,
	[UnitsInStock] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = ON) ON [_dta_ps__5201]([UnitsInStock])
go

SET ANSI_PADDING ON

go

CREATE NONCLUSTERED INDEX [_dta_index_ku2_10_738101670__K10_K6_K16_14_15] ON [dbo].[ku2]
(
	[Freight] ASC,
	[Country] ASC,
	[ProductName] ASC
)
INCLUDE([UnitPrice],[Quantity]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = ON) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_738101670_6_16_10] ON [dbo].[ku2]([Country], [ProductName], [Freight])
go

CREATE STATISTICS [_dta_stat_738101670_10_17_16] ON [dbo].[ku2]([Freight], [UnitsInStock], [ProductName])
go

CREATE STATISTICS [_dta_stat_738101670_16_6_17_10] ON [dbo].[ku2]([ProductName], [Country], [UnitsInStock], [Freight])
go

SET ANSI_PADDING ON

go

CREATE CLUSTERED INDEX [_dta_index_ku4_c_10_786101841__K5] ON [dbo].[ku4]
(
	[City] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = ON) ON [PRIMARY]
go

