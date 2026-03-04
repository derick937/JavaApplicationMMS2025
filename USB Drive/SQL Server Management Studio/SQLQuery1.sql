select name + '  department comes under  ' + groupname +
'  group ' as 'Department' from HumanResources.Department;


select * from HumanResources.Department;


select 5/10;
select 5%10;


select nationalidnumber,Title,  maritalstatus,
gender, VacationHours, + SickLeaveHours as 
'total vacation hours' from HumanResources.Employee;

select * from HumanResources.Department;

select * from HumanResources.EmployeePayHistory
select rate + (rate * 0.07) as Bonus
from HumanResources.EmployeePayHistory

select Title,gender,vacationhours
from HumanResources.Employee where VacationHours >= 50;

select Title,gender,vacationhours
from HumanResources.Employee where VacationHours < 50;

select Title,gender,vacationhours
from HumanResources.Employee where VacationHours <> 50;

select Title,gender,vacationhours
from HumanResources.Employee where VacationHours  = 50 AND
NOT gender = 'M';

select Title,gender,vacationhours
from HumanResources.Employee where VacationHours > 50 AND
NOT Gender = 'M';

select Title,gender,vacationhours
from HumanResources.Employee where VacationHours = 50;

select Title,gender,vacationhours
from HumanResources.Employee where VacationHours = 50 or Gender = 'M';

select Title,gender,vacationhours
from HumanResources.Employee where VacationHours > 50 OR
gender = 'M';

select Title,gender,vacationhours from HumanResources.Employee 
where Title in('Acountant','stocker','tool designer',
'Production technician - Wc10');

select Title,gender,vacationhours from HumanResources.Employee 
where VacationHours in(20,40,60,80);

select Title,gender,vacationhours from HumanResources.Employee 
where Title Not in('Accountant','Stocker','Tool Designer',
'Prouction Technician - Wc10');

select rate from HumanResources.EmployeePayHistory where 
rate between 20 AND 50;

select rate from HumanResources.EmployeePayHistory where 
rate not between 20 AND 50;

select productid name,color from production.Product
where color is null;

select productid name,color from production.Product
where color is not null;

select Title from HumanResources.Employee;

select distinct Title from HumanResources.Employee;

select Top 20 * from HumanResources.Employee 

select Top 5 * from HumanResources.Employee where
VacationHours in(40,30,80);

select nationalidnumber,loginid,Title,gender,vacationhours 
from HumanResources.Employee where VacationHours >= 80 order by
VacationHours

select nationalidnumber,loginid,Title,gender,vacationhours 
from HumanResources.Employee where VacationHours >= 80 order by
VacationHours desc

select Title ,maritalstatus,gender,VacationHours from 
HumanResources.Employee where Title in('Stocker','Tool Designer',
'Accountant') and VacationHours < 50 order by Title 

select employeeid,nationalidnumber,
contactid,hiredate,Vacationhours from HumanResources.Employee 
order by EmployeeID offset 150 rows;

select employeeid,nationalidnumber,
contactid,hiredate,Vacationhours from HumanResources.Employee 
order by EmployeeID offset 150 rows fetch next 50 rows only;

select ascii('K');
select ascii(' ');
select ascii('?');
select char(107);

select left('John george',6);
select right('John george',6);
select lower('KATE JOHN');

Select DATEADD(yyyy,2,'1985/08/06');

select dateadd(mm,7,'1987/08/06');

select datediff(yyyy,'2000/08/06','2025/10/14');
select datediff(mm,'2000/08/06','2025/10/14');
select datediff(dd,'2000/08/06','2025/10/14');

Select employeeid,Title,gender,datediff(yyyy,hiredate,getdate())
as NumberOfyears from HumanResources.Employee;

select abs(-6);
select pi();
select power(7,2)
select round(pi(),3)

select sum(vacationhours) as 'Total Vacationhours',
avg(Vacationhours) as 'Average Vacationhours',
max(Vacationhours) as 'highest Vacationhours',
min(vacationhours) as 'Lowest Vacationhours',
count(Vacationhours) as 'Number of Vacation hours'
from HumanResources.Employee

select maritalstatus,Sum(vacationhours)
as 'Total Vacation Hours' from
HumanResources.Employee group by MaritalStatus;


select Title,Sum(vacationhours) from HumanResources.Employee
where Title in('Accountant','Stocker','tool designer',
'recruiter','sales representatives') group by Title;


select * from HumanResources.Employee;
select * from person.Contact;

select EmployeeID,C.Title,firstname,lastname,E.Title,Maritalstatus,gender,
emailaddress,datediff(yyyy,birthdate,getdate()) as Age
,phone from HumanResources.Employee as e
inner join person.Contact as C on C.ContactID = E.ContactID;


select * from Production.Product;
select * from Sales.SalesOrderDetail

select P.ProductID,name,productnumber,salesorderid,
orderqty,unitprice,linetotal as 'Total Amount'
from Production.Product as p left outer join 
sales.SalesOrderDetail as sod on P.ProductID = sod.ProductID;

select * From Production.Product;
select * From Sales.Customer;
Select * From Sales.SalesOrderHeader;
Select * From Sales.SalesOrderDetail;

select p.ProductID,Name,color,orderqty,unitprice,LineTotal AS 'TotalAmount', c.customerID,con.FirstName,con.LastName,c.AccountNumber,con.Phone,V From Sales.Customer c
Full Outer Join sales.SalesOrderHeader soh ON c.CustomerID=soh.CustomerID
Full Outer JOIN Sales.SalesOrderDetail sod ON sod.SalesOrderID=soh.SalesOrderID
Full Outer JOin Production.Product p ON p.ProductID=sod.ProductID
Full Outer JOIN Person.Contact con ON Con.contactID=soh.contactID


create table Myshapes(
shapeID int identity primary key,
shapeName varchar(30) not null
);

create table Mycolors(
ColorID int identity primary key,
colorName varchar(30) not null
);


insert into Myshapes values
('Rectangle'),
('Square'),
('Circle'),
('Lines'),
('Pentagon'),
('Oval')

insert into Mycolors values
('Red'),
('Green'),
('Blue')

select * From Mycolors;
Select * from Myshapes;

 sub query is an SQL query Statement inside another SQL state

 create table MTNEmployee(
 EmployeeID int identity primary key, 
 Name varchar (20) not null,
 Designation varchar (30) not null,
 salary money Not null,
 DepartmentNumber int
 );

 Insert into MTNEmployee values
 ('John','Executive',300000,5),
 ('Smith','Accounttant',350000,2),
 ('Robert','Executive',300000,5),
 ('Jack','Executive',300000,4),
 ('Sylver','Clerk',300000,2),
 ('Johnny','Manager',450000,2)

 Select * From MTNEmployee;

 Select Designation from MTNEmployee  Where Name = 'john';
 Select * from MTNEmployee where Designation = 'Executive';

 Select * From MTNEmployee where Designation=(select Designation From MTNEmployee where name='John');