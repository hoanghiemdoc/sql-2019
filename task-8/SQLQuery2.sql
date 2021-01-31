CREATE DATABASE Lab11
GO
USE Lab11

CREATE VIEW ProductList
AS
SELECT ProductID, Name FROM AdventureWorks.Production.Product

SELECT * FROM ProductList

CREATE VIEW SalesOrderDetail
AS
SELECT pr.ProductID, pr.Name, od.UnitPrice, od.OrderQty,
od.UnitPrice*od.OrderQty as [Total Price]
FROM AdventureWorks.Sales.SalesOrderDetail od
JOIN AdventureWorks.Production.Product pr

Khung nhìn ON od.ProductID=pr.ProductID

SELECT * FROM SalesOrderDetail