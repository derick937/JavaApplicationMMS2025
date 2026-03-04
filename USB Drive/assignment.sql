--Exercise 1
select * from Sales.Customer

--Exercise 2
select CreditCardID, CardType as 'Credit Card Type',CardNumber as 'Card Card Number',
ExpYear as 'Expiry Year' from Sales.CreditCard;

--Exercise 3

select CustomerID, AccountNumber from Sales.SalesOrderHeader
where TerritoryID = 4

--Exercise 4
select * from Sales.SalesOrderDetail

select SalesOrderDetailID, UnitPrice from Sales.SalesOrderDetail where UnitPrice> 2000;

--Exercise 5


--Exercise 6

select * from Sales.SalesOrderDetail 
where ModifiedDate = '2004/06/06'

--Exercise 7
select SalesOrderID as 'Order ID', OrderQty as 'Order Quantity',
UnitPrice as 'Unit Price', LineTotal as 'Total Cost'  
from Sales.SalesOrderDetail 

--Exercise 8

--Exercise 9
select * from Sales.SalesTerritory

select Name,CountryRegionCode,ModifiedDate from Sales.SalesTerritory 
where TerritoryID = 1

--Exercise 10
select * from Sales.SalesOrderHeader where TaxAmt >10000

--Exercise 11

select * from Sales.SalesTerritory

select * from Sales.SalesTerritory
where Name in ('Canada','France', 'Germany')

--Exercise 12

select * from Sales.SalesPerson

select SalesPersonID,TerritoryID from Sales.SalesPerson where TerritoryID  = 2

--Exercise 13

select * from Sales.CreditCard

select * from Sales.CreditCard where CardType = 'Vista' AND ExpYear= 2006

--Exercise 14

select * from Sales.SalesOrderHeader

select * from Sales.SalesOrderHeader where ShipDate = '2004/07/12'

--Exercise 15

select SalesOrderNumber as 'Order Number', OrderDate as 'Order date', Status,
TotalDue as 'Total Cost' , OrderDate from Sales.SalesOrderHeader
where TotalDue > 10000 AND OrderDate = '2001/07/01'

--Exercise 16
select * from Sales.SalesOrderHeader

select * from Sales.SalesOrderHeader where OnlineOrderFlag = '1'

--Exercise 17
select SalesOrderID as 'Order ID', TotalDue as 'Total Due' 
from Sales.SalesOrderHeader  Order by TotalDue DESC

--Exercise 18

select * from Sales.SalesOrderHeader

select SalesOrderID, TaxAmt from Sales.SalesOrderHeader where TaxAmt<2000 order by TaxAmt

--Exercise 19
select * from Sales.SalesOrderHeader

select SalesOrderNumber,TotalDue from Sales.SalesOrderHeader Order by TotalDue

--Exercise 20
Select * from Sales.Currency

Select * from Sales.Currency where Name like '%Dollar' -- not correct

--Exercise 21


--Exercise 22
select * from Sales.SalesPerson

select SalesPersonID as 'Sales Person ID', TerritoryID as 'Territory ID',
SalesQuota as 'Sales Quota' from Sales.SalesPerson 
where SalesQuota is not null

--Exercise 23

select SalesPersonID, Bonus from Sales.SalesPerson  order by Bonus OFFSET 14 ROW ;

----Exercise 24


----Exercise 25
select Distinct CardType from Sales.CreditCard 

--Exercise 26
select * from HumanResources.Employee

select EmployeeID,LoginID,Title from HumanResources.Employee 
order by EmployeeID offset 5 row fetch next 10 row only

--Exercise 27
select * from Sales.SalesOrderDetail

--Exercise 28
select * from Sales.SalesOrderHeader


select sum(TotalDue) from Sales.SalesOrderHeader

--Exercise 29
select * from Sales.SalesOrderHeader

select SalesOrderID,ModifiedDate as 'Order ID' from Sales.SalesOrderHeader
Where year(OrderDate) = 2001		

--Exercise 30
Select SalesOrderID,ProductID,sum(LineTotal) from Sales.SalesOrderDetail
group by SalesOrderID

Error

--Exercise 31
select * from Sales.SalesOrderDetail
select ProductID, LineTotal from Sales.SalesOrderDetail where LineTotal > 10000

--Exercise 32


--Exercise 33
select * from Sales.SalesOrderHeader

select YEAR(OrderDate) as OrderYear,sum(TotalDue) as TotalAmountCollected
from Sales.SalesOrderHeader Group by YEAR(OrderDate) Order by OrderYear

--Exercise 34
select * from Sales.SalesOrderDetail


select  ProductID, sum(UnitPrice) as 'Unit Price',sum(LineTotal) as 'Line Total',
sum(UnitPrice) as 'Total Amount'
from Sales.SalesOrderDetail where ProductID in (774, 777)
group by ProductID Order by ProductID

--Exercise 35


--Exercise 36
select * from Sales.SalesOrderDetail

select SalesOrderID, AVG(LineTotal) as 'Average Total' from Sales.SalesOrderDetail
group by SalesOrderID  having sum(LineTotal) > 5000

--Exercise 37

--Exercise 38
select * from Sales.SalesOrderHeader
select SalesOrderNumber as 'Order Number', TotalDue as 'Total  Due',
DATEDIFF(dd,DAY,GETDATE())
from Sales.SalesOrderHeader
---working

--Exercise 39

--Exercise 40
select * from HumanResources.Employee

select EmployeeID, HireDate, FORMAT(ModifiedDate, 'yyyy-MM') as  'Modified Date'
from HumanResources.Employee


--Exercise 41

select * from Sales.

--Exercise 42
select 'The list price of ' + Name + ' is $' + 
CAST(ListPrice as varchar(10)) as ProductPrice from Production.Product 
where ListPrice between 360.00 and 499.00; 

--Exercise 43

select ProductID, sum(LineTotal) as Total from Sales.SalesOrderDetail group by ProductID

--Exercise 44

Select SalesPersonID, Sum(SubTotal) as TotalSales from Sales.SalesOrderHeader
group by rollup(SalesPersonID)

select * from Sales.SalesOrderHeader

--Exercise 45

select * from Production.ProductInventory


select ProductID, Quantity as 'Availability of Product'  from Production.ProductInventory  --not done

--Exercise 46


-- exercise 47
Select FirstName + ISNULL('' + MiddleName, '') + ' ' + Lastname as PersonName 
from Person.Contact;

--Exercise 48 
select * from HumanResources.Employee

---can't find the table

--exercise 49
select FirstName, LastName from Person.Contact where FirstName Like 's%'

--exercise 50

--exercise 51
create schema sub_category;

create table sub_category.answer(   
functionName varchar(20),
category varchar(20)
);

select * from sub_category.answer

insert into sub_category.answer values('Row_Number', 'Ranking Function');
insert into sub_category.answer values('Pi()', 'Mathematicial function');
insert into sub_category.answer values('Avg()', 'Aggregate function');
insert into sub_category.answer values('count()	', 'aggregate function');
insert into sub_category.answer values('datediff', 'date function');
insert into sub_category.answer values('reverse()', 'string function');
insert into sub_category.answer values('min()', 'Aggregate function');







Assingment 2

Exercise 1

select * from Sales.SalesPerson;

select SalesPersonID, TerritoryID from Sales.SalesPerson;

Exercise 2

select * from Sales.SalesTerritory

select p.SalesPersonID as 'Person ID', p.TerritoryID as 'Territory ID',sod.Name 
from Sales.SalesPerson as p left outer join 
Sales.SalesTerritory as sod
on p.TerritoryID =sod.TerritoryID

Exercise 3

select * from Sales.SalesOrderHeader

select * from Sales.SalesOrderDetail

select SD.SalesOrderID as 'Order ID', SD.ProductID as 'Product ID',SOH.OrderDate 
as 'Order Date'
from Sales.SalesOrderDetail as SD left outer join 
Sales.SalesOrderHeader as SOH on
SD.SalesOrderID = SOH.SalesOrderID

Exercise 4

select * from Sales.SalesPerson;
select * from Sales.SalesTerritory

select p.SalesPersonID as 'Sales Person ID',sod.Name as 'Territory Name' 
from Sales.SalesPerson as p left outer join 
Sales.SalesTerritory as sod
on p.TerritoryID =sod.TerritoryID

Exercise 5

select * from Sales.SalesOrderHeader
select * from Sales.SalesTerritory

select DATENAME (month, OrderDate) as month from Sales.SalesOrderHeader;

select soh.SalesOrderID, st.Name, DATENAME (month, soh.OrderDate) as Month, 
DATENAME (year, soh.OrderDate) as Year
from Sales.SalesOrderHeader as soh left outer join Sales.SalesTerritory as st on 
st.TerritoryID = soh.TerritoryID

--Exercise 6

select * from Sales.SalesOrderHeader
select * from Sales.SalesTerritory

select soh.SalesOrderID, st.Name, soh.OrderDate, DATEPART(QUARTER, soh.OrderDate)
from Sales.SalesOrderHeader as soh left outer join Sales.SalesTerritory as st on 
soh.TerritoryID = st.TerritoryID

--Exercise 7
select * from Sales.CreditCard
select * from Sales.SalesOrderHeader

select CAST(sum(soh.TotalDue) as int)as 'Total Due', soh.SalesOrderID,scc.CardType 
from Sales.SalesOrderHeader as soh left outer join Sales.CreditCard as scc on
soh.CreditCardID = scc.CreditCardID --working on it

--Exercise 8

select TerritoryID, CountryRegionCode from sales.SalesTerritory

--Exercise 9
select * from Sales.SalesOrderHeader

select 'The total amount due for Sales Order ID: ' + CAST(SalesOrderID as varchar) + ' is '
+ CAST(TotalDue as varchar)
 from Sales.SalesOrderHeader

 --Exercise 10
 select * from Sales.SalesOrderHeader
 select * from Sales.SalesTerritory

 select soh.SalesOrderID,FORMAT(soh.OrderDate, 'dd/mm/yyyy'), st.Name 
 from Sales.SalesOrderHeader as soh left outer join 
 Sales.SalesTerritory as st on soh.TerritoryID = st.TerritoryID

 --Exercise 11

 select * from Sales.SalesOrderHeader

 select soh.SalesOrderID, st.Name, soh.OrderDate from Sales.SalesOrderHeader as soh left outer join 
 Sales.SalesTerritory as st on soh.TerritoryID = st.TerritoryID
 where soh.OrderDate BETWEEN '2004-05-01' AND '2004-05-31'

 --Exercise 12

 select * from Sales.CreditCard

 select CreditCardID from Sales.CreditCard where CardType = 'Vista'

 --Exercise 13

 select soh.SalesOrderID, st.Name
from Sales.SalesOrderHeader as soh left outer join Sales.SalesTerritory as st on 
soh.TerritoryID = st.TerritoryID where st.Name = 'Northeast' 

--Exercise 15
38331.9613
select * from Sales.SalesOrderHeader
select * from Sales.SalesOrderDetail
select TotalDue  from Sales.SalesOrderHeader  where SalesOrderID = 43662

select soh.SalesOrderID, sod.SalesOrderDetailID, soh.TotalDue 
from Sales.SalesOrderHeader as soh left outer join Sales.SalesOrderDetail as sod on
soh.SalesOrderID = sod.SalesOrderID where soh.TotalDue > 38331.9613

--Exercise 16
select * from Sales.SalesOrderHeader
select * from Sales.CreditCard

select soh.SalesOrderID, cc.CreditCardID 
from Sales.SalesOrderHeader as soh left outer join  Sales.CreditCard as cc
on soh.CreditCardID = cc.CreditCardID where ExpYear = 2007

--Exercise 17
select * from Sales.SalesOrderDetail where UnitPriceDiscount = 0

--Exercise 18
select soh.SalesOrderID
from Sales.SalesOrderHeader as soh left outer join  Sales.CreditCard as cc
on soh.CreditCardID = cc.CreditCardID where CardType = 'SuperiorCard'

--Exercise 19

--Exercise 20
select EmployeeID from HumanResources.Employee where Title = 'Tool Designer'

--Exercise 21
select * from Person.Contact where FirstName = 'Catherine' And LastName = 'Abel'
select * from Sales.ContactCreditCard
select * from Sales.CreditCard

select CardNumber  from Person.Contact as c left outer join Sales.ContactCreditCard as ccc
on  c.ContactID = ccc.ContactID left outer join 
Sales.CreditCard as cc on ccc.CreditCardID =cc.CreditCardID 
where FirstName = 'Catherine' And LastName = 'Abel'

--Exercise 22

select * from Sales.SalesOrderDetail
select * from Sales.SalesOrderHeader

select SalesOrderID,SalesOrderDetailID, LineTotal, AVG(LineTotal) as Average 
from Sales.SalesOrderDetail
where LineTotal > Average

select Sum(LineTotal) from Sales.SalesOrderDetail

--error

--Exercise 23


select * from Person.Contact
select * from Sales.ContactCreditCard
select * from Sales.CreditCard

select c.FirstName,c.LastName, cc.CardNumber from Person.Contact as c left outer join
Sales.ContactCreditCard as ccc
on  c.ContactID = ccc.ContactID left outer join 
Sales.CreditCard as cc on ccc.CreditCardID =cc.CreditCardID 

--Exercise 24

--Exercise 25
select * from Sales.CreditCard

select CreditCardID, CardType, ExpYear from Sales.CreditCard 
where ExpYear != 2005 AND ExpYear != 2007

--Exercise 26
1. Inner Join
2. Right Outer Join 
3. Left outer Join

--Exercise 27
 select column_name from table1_name join table2_name 
 on table1_name.ref_column_name = table2_name.ref_column_name
 where search_condition;
--Exercise 28

--1st table

create table Employee(
EmpId int identity primary key,
empName varchar(30) not null,
MangerID int);
select * from Employee

insert into Employee values
('kim',3),
('Ronaldo',5),
('James',4),
('Samuel',1),
('Robert',1),
('Calculator',2);

--2nd table

create table EmpTraining(
TrainingId int identity primary key,
EmpId int ,
TrianingTitle varchar(50));


insert into EmpTraining values
(1,'Corporate Interaction'),
(3,'Microsoft Project'),
(3,'Plannig and Prioritizing'),
(4,'Assertive Communication'),
(2,'Effective Selling Skills');

select *  from EmpTraining

select e.Empid, e.empName, et.Trainingid, et.TrianingTitle 
from Employee as e left outer join EmpTraining as et on e.Empid = et.Empid
where TrainingId is not Null

--Exercise 29

create table Student_table(
StudentId int identity primary key,
FirstName varchar(30) not null,
LastName varchar(30) not null,
Class int,
Sport varchar(50));

select * from Student_table

insert into Student_table values
('James','Garvin',9,'Football'),
('Jennifer','Abram',10,'Table Tennis'),
('John','Bardsley',10,'Hockey'),
('Alice','Beck',9,'Table Tennis'),
('Anny','Clark',10,'Table Tennis');

select * from Student_table

select * from Student_table
where Sport = 'Table Tennis'