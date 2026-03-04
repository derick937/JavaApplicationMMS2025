-- chapter 2

--Exercise 1
select * from  sales.Customer;

--Exercise 2
select creditcardID as 'credit card id',Cardtype as 'credit type',
Cardnumber as 'credit card number',Expyear as 'Expiry year'
from sales.CreditCard;

--Exercise 3
select CustomerID,Accountnumber,TerritoryID from sales.Customer;

--Exercise 4
select * from Sales.SalesOrderDetail;

--Exercise 5
select * from Production.Product where Name = 'Cable Lock';

--Exercise 6
select * from sales.SalesOrderHeader
where orderDate = '2004/06/06';

--Exercise 7
select
      salesorderID as [ORDERID],
	  orderQty As [ORDER QUANTITY],
	  Unitprice As [UNIT PRICE],
	  linetotal As [TOTAL COST]
FROM sales.SalesOrderDetail;

--Exercise 8
select
      salesorderID as [ORDERID],
	  orderQty As [ORDER QUANTITY],
	  Unitprice As [UNIT PRICE],
	  UnitPriceDiscount as [UNIT PRICE DISCOUNT],
	  LineTotal AS [TOTAL COST]
FROM sales.SalesOrderDetail
WHERE LineTotal BETWEEN $2000 AND $2100;

--EXERCISE 9
select NAME as [TERRITORY NAME],
countryregioncode AS [COUNTRY],
[Group] AS [REGION CODE],
salesYTD AS [SALES YEAR TO DATE]
from sales.SalesTerritory where TerritoryID = 1;

--Exercise 10
select * From sales.SalesOrderHeader
where TaxAmt  = 10000;

--Exercise 11
select * from sales.SalesTerritory where Name in('Canada','France','Germany');     
select * from sales.SalesTerritory where CountryRegionCode in('CA','FR','DE');

--Exercise 12
select SalesPersonID as 'Sales Person ID',TerritoryID as 'Territory ID' 
from sales.SalesPerson where TerritoryID = 2 or TerritoryID = 4;

--Exercise 13
select * from sales.CreditCard where CardType = 'Vista' AND ExpYear = 2006;

--Exercise 14
select * from sales.SalesOrderHeader where ShipDate = '2004/07/12';

--Exercise 15
select salesorderNumber as 'Order Number', OrderDate as 'Order Date', status,TotalDue as
'Total cost' from sales.SalesOrderHeader where OrderDate = ('2001/07/01') AND TotalDue > 10000;

--Exercise 16
select * from sales.salesorderheader where onlineorderFlag = 1;

--Exercise 17
select salesorderID as 'Order ID',TotalDue as 'Total Due' from Sales.SalesOrderHeader
order  by TotalDue desc;

--Exercise 18
select SalesOrderID as 'order ID', TaxAmt as 'Tax Amount' from Sales.SalesOrderHeader 
where TotalDue = 2000 Order by TotalDue ASC;

--Exercise 19
select Salesorderid as 'Order Number',TotalDue as 'Total Value of Order' from Sales.SalesOrderHeader
order by TotalDue ASC;

--Exercise 20
select * from sales.Currency where name like '$DOLLAR$';

--Exercise 21
select * from Sales.SalesTerritory where name like 'N';

--Exercise 22
select SalesPersonID as 'sales person ID',TerritoryID as 'Territory ID',salesQuota as 'Sales Qouta' 
from Sales.SalesPerson;

--Exercise 23
select TOP 3
 SalesPersonID From sales.SalesOrderHeader;

 --Exercise 24
 select * from sales.Store where Name like '%bike%';

 --Exercise 25
 select Distinct CardType  from sales.CreditCard;

 --Exercise 26
 select
      BusinessEntityID AS [EmployeeID],
	  LoginID AS [Login ID],
	  JobTittle AS [Tittle]
From HumanResources.Employee Order by BusinessEntityID
OFFSET 5 ROWS FETCH NEXT 10 ROWS Only;

--Exercise 27
Select
      MAx(SubTotal) AS [Maximum Rate],
	  MIN(SubTotal) AS [Minimum Rate],
	  AVG(subTotal) AS [Average Rate]
From Sales.SalesOrderHeader;

--Exercise 28
select
    SUM(TotalDue) AS [Total Values of All Orders] from Sales.SalesOrderHeader;

--Exercise 29
select
	SalesOrderID AS [Order ID],
	TotalDue AS [Total Amount Due],
	Orderdate
From sales.SalesOrderHeader where Year(orderDate)=2001
OFF SET 0 ROWS FETCH NEXT 5 ROWS ONLY;

--Exercise 30
Select salesOrderID,Sum(LineTotal)AS [Total Order Value]
from sales.SalesOrderDetail Group by SalesOrderID;

--Exercise 31
select productID,SUm(LineTotal) AS [Total Product cost]
from sales.SalesOrderDetail Group By ProductID having sum(lineTotal)>10000;

--Exercise 32
select ProductID,Sum(LineTotal) AS Total From sales.SalesOrderDetail Group BY Rollup(ProductID);

--Exercise 33
select OrderDate,Sum(TotalDue)AS [Total Amount Collected] From Sales.SalesOrderHeader Group By OrderDate 
Order BY OrderDate;

--Exercise 34
select productID,Sum(Unitprice) AS [Total Unit Price],Sum(lineTotal)AS[Total Amount collected] 
from sales.SalesOrderDetail where ProductID in (774,777) Group By ProductID;

--Exercise 35
select salesorderID,MAX(lineTotal)AS[Maximum LIne value],
MIN(lineTotal)AS[Minimum line Value] from sales.SalesOrderDetail Group By SalesOrderID Having Sum(lineTotal)>5000;

--Exercise 36 
select salesorderID AS [sales Order ID],AVG(lineTotal) AS [Average Value] From Sales.SalesOrderDetail group by SalesOrderID having sum(lineTotal)>5000;

--Exercise 37
select C.customerID,LEFT(S.name,15) AS [Customer Name],Soh.SalesPersonID from sales.Customer c Join sales.store s ON C.customerID=s.CustomerID
JOIN sales.salesorderheader soh ON C.customerID = soh.CustomerID;

--Exercise 38
select salesorderID As [Order NUmber],TotalDue AS [Total Due],DATENAME(DAY,OrderDate) AS [Day Of Order],DATENAME(WEEKDAY,orderDate) AS [WeekDay] 
From Sales.SalesOrderHeader order by OrderDate;

--Exercise 39
select salesOrderID AS [sales Ordered],OrderQty,UnitPrice,
DENSE_RANK() OVER(ORDER BY UnitPrice) AS [Price Group] from Sales.SalesOrderDetail;

--Exercise 40
select EmployeeID AS [Employee ID],HireDate,MONTH(HireDate) AS [Hire Month],
Year(HireDate) AS [Hire Year] From HumanResources.Employee;

--Exercise 41
select I.LocationID,I.Name AS [Location Name],P.productID,P.StandardCost AS [Cost rate],NTILE (3) OVER (ORDER BY P.StandardCost DESC) 
AS [Cost Rank] From Production.ProductCostHistory p JOIN Production.Location I ON P.ProductID = I.LocationID where P.StandardCost > 12;

select * from Production.Product

--Exercise 42
select The List Price OF + Name + '" IS $' + CAST(ListPrice AS varchar(10)) AS List Price from Production.Product where Listprice Between  360.00 And 499.00;



--Exercise 43
Select ProductID,Sum(lineTotal) AS Total From Sales.SalesOrderDetail Group By Cube(ProductID);

--Exercise 44
--Sum of sales amount by each salesperson
select salespersonID,sum(TotalDue) AS [Total sales Amount] from Sales.SalesOrderHeader where SalesPersonID IS NOT NULL GROUP BY SalesPersonID;

Union ALL
-TOtal sales amount by all salespersons
Select NULL AS SalesPersonID,Sum(TotalDue) AS [Total Sales Amount] From Sales.SalesOrderHeader where SalesPersonID IS NOT NULL;

--Exercise 45 
select productID,CASE WHEN QUANTITY> 0 Then 'Available' ELSE 'OUT OF Stock' END AS [Availability of Product] From Production.ProductInventory;

--Exercise 46
select ProductID YEAR(Curr.Sartdate) AS [Current Year],Curr.StandardCost AS [Current Year Price],Prev.StandardCost AS [Previous Year Price]
From Production.ProductCostHistory curr LEFT JOIN Production.ProductCostHistory prev ON Curr.ProductID = Prev.ProductID AND YEAR(Curr.startdate)= Year(prev.Startdate) + 1 Where Curr.ProductID=715 Order BY YEAR(Curr.StartDate);

--EXERCISE 47
 select 
     FirstName + lASTNAME AS 'PERSON NAME' FROM Person.Contact;

--Exercise 48
SELECT 
    name,
    Eproject
FROM Employee
WHERE Empid BETWEEN 2 AND 4;**


--CHAPTER 3

--Exercise 1
select * from sales.salesterritory;