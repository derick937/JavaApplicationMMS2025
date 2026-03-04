--CHAPTER 3

--Exercise 1
select SalespersonID, Name AS TerritoryName 
From Sales.SalesTerritory t JOIN sales.SalesPerson s On t.TerritoryID= s.TerritoryID;

--Exercise 2
Select s.salespersonID AS PersonID,s.TerritoryID,t.Name as TerritoryName 
From Sales.SalesPerson s JOIN Sales.SalesTerritory t ON s.TerritoryID = t.TerritoryID;

--Exercise 3
Select soh.salesOrderID AS 'Order ID', ProductID as 'Product ID', OrderDate as 'Order Date'
From sales.salesOrderHeader soh JOIN sales.SalesOrderDetail ON soh.SalesOrderID = soh.SalesOrderID

--Exercise 4
select S.salesPersonID as SalesPersonID,t.Name as TerritoryName 
From Sales.SalesPerson s LEFT JOIN Sales.SalesTerritory t ON S.TerritoryID=t.TerritoryID;

--Exercise 5
Select so.salesorderID,Name'TerritoryName',MONTH(so.OrderDate) AS Month,YEAR(so.OrderDate) AS Year From Sales.SalesOrderHeader so JOIN Sales.SalesTerritory st 
On so.TerritoryID=st.TerritoryID;

--Exercise 6
select so.salesOrderID,Name'TerritoryName',Orderdate,DATEPART(QUARTER, Orderdate) AS Quarter From Sales.SalesOrderHeader so JOIN Sales.SalesTerritory sg
ON so.TerritoryID = sg.TerritoryID;

SELECT * FROM Person.Contact;

--Eercise 7
Select soh.salesOrderID,ccd.CardType,ROUND(soh.Totaldue, 0) AS TotalAmount FRom Sales.SalesOrderHeader soh JOIN Sales.CreditCard ccd
ON soh.CreditCardID=ccd.CreditCardID;

--Exercise 8
Select TerritoryID,countryRegionCode FROM Sales.SalesTerritory;

--Exercise 9
SELECT 'The total amount due for the sales order ID: '
													 +cast(SalesOrderID as varchar(10))
													 +' is $'
													 +cast(TotalDue AS varchar(20)) AS [Order Value]
													 From Sales.SalesOrderHeader;
--Exercise 10
Select sih.salesOrderID,sy.Name AS TerritoryName,
	   CONVERT(Varchar(10), sih.OrderDate, 103)
	   AS OrderDate
	   From Sales.SalesOrderHeader sih
	   JOIN Sales.SalesTerritory sy
	   ON sih.TerritoryID=sy.TerritoryID;
	   
select * from Sales.SalesOrderHeader;
select * from sales.SalesOrderDetail;
select * from sales.SalesTerritory;

--Eercise 11
select soh.salesOrderID,t.Name AS'TerritoryNane' From Sales.SalesOrderHeader soh JOIN Sales.SalesTerritory t ON soh.TerritoryID=t.TerritoryID
WHERE MONTH(soh.OrderDate)= 5 AND YEAR(soh.OrderDate)=2004;

--Exercise 12
Select pc.ContactID From Sales.ContactCreditCard pc Join Sales.CreditCard cc ON pc.CreditCardID=cc.CreditCardID
WHERE cc.CardType='Vista';

--Exercise 13
select soh.salesOrderID From Sales.SalesOrderHeader soh JOIN Sales.SalesTerritory t ON soh.TerritoryID=t.TerritoryID
WHERE t.Name='Northeast';

--Exercise 14
select SalesOrderID From Sales.SalesOrderHeader Where TotalDue > (
Select AVG(TotalDue) From sales.SalesOrderHeader);

--Exercise 15
SELECT salesOrderID, SalesOrderDetailID,LineTotal AS 'TotalValue' From sales.SalesOrderDetail where LineTotal >(
Select MAX(LineTotal) From Sales.SalesOrderDetail WHERE SalesOrderID=43662);

--Exercise 16
SELECT salesOrderID,CreditCardID AS 'credit card ID' From sales.SalesOrderHeader soh JOIN sales.CreditCard cc 
ON soh.CreditCardID=cc.CreditCardID WHERE cc.ExpYear=2007;

--Exercise 17
SElect * from Sales.SalesOrderDetail WHERE UnitPriceDiscount=0;

--Exercise 18
SELECT soh.salesorderID From Sales.SalesOrderHeader soh
JOIN sales.CreditCard cc ON soh.CreditCardID=cc.CreditCardID where cc.CardType='SuperiorCard';

--Eercise 19
Select AVG(AverageRate) AS 'AvgRate' From Sales.CurrencyRate where CurrencyRateDate= '2004-07-01'
AND FromCurrencyCode= 'AUD';

--Exercise 20
Select e.EmployeeID From HumanResources.EmployeeDepartmentHistory e JOIN HumanResources.Department d
ON e.DepartmentID = d.DepartMentID;

Select * from HumanResources.EmployeeDepartmentHistory

--Eercise 21
SELECT FirstName, LastName, cardnumber from Person.Contact c inner join Person.ContactType as ct on c.ContactID = ct.ContactTypeID
join Sales.CreditCard as cc on cc.CreditCardID = cc.CreditCardID where name = 'Catherine' and LastName = 'Abel'

--Eercise 22
SELECT SalesOrderID, SalesOrderDetailID, TotalValue
FROM Sales.SalesOrderDetail
WHERE TotalValue > (
    SELECT AVG('TotalValue')
    FROM Sales.SalesOrderHeader
);


