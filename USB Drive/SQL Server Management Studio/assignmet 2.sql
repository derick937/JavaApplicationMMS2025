-- Use the AdventureWorks database
USE AdventureWorks;
GO

/*============================================
 Exercise 1
 Display the details of all the customers
============================================*/
SELECT * 
FROM Sales.Customer;
GO

/*============================================
 Exercise 2
 Display the ID, type, number, and expiry year 
 of all the credit cards
============================================*/
SELECT 
    CreditCardID AS [Credit Card ID], 
    CardType AS [Credit Card Type],
    CardNumber AS [Credit Card Number],
    ExpYear AS [Expiry Year]
FROM Sales.CreditCard;
GO

/*============================================
 Exercise 3
 Display the customer ID and account number 
 of all customers who live in TerritoryID 4
============================================*/
SELECT 
    CustomerID AS [Customer ID],
    AccountNumber AS [Account Number]
FROM Sales.Customer
WHERE TerritoryID = 4;
GO

/*============================================
 Exercise 4
 Display all details of the sales orders 
 that have a cost exceeding $2,000
============================================*/
SELECT * 
FROM Sales.SalesOrderHeader
WHERE TotalDue > 2000;
GO

/*============================================
 Exercise 5
 Display the sales order details of the product 
 named 'Cable Lock' (ProductID = 843)
============================================*/
SELECT *
FROM Sales.SalesOrderDetail
WHERE ProductID = 843;
GO

/*============================================
 Exercise 6
 Display the list of all the orders placed 
 on June 06, 2004
============================================*/
SELECT *
FROM Sales.SalesOrderHeader
WHERE OrderDate = '2004-06-06';
GO

/*============================================
 Exercise 7
 Display a report of all the orders in the 
 following format:
 Order ID | Order Quantity | Unit Price | Total Cost
============================================*/
SELECT 
    SalesOrderID AS [Order ID],
    OrderQty AS [Order Quantity],
    UnitPrice AS [Unit Price],
    (OrderQty * UnitPrice) AS [Total Cost]
FROM Sales.SalesOrderDetail;
GO

-- Use the AdventureWorks database
USE AdventureWorks;
GO

/*============================================
 Exercise 8
 Display a list of all the sales orders in the 
 price range of $2,000 to $2,100.
============================================*/
SELECT *
FROM Sales.SalesOrderDetail
WHERE LineTotal BETWEEN 2000 AND 2100;
GO

/*============================================
 Exercise 9
 Display the name, country region code, and 
 sales year to date for the territory with TerritoryID = 1.
============================================*/
SELECT 
    Name AS [Territory Name],
    CountryRegionCode,
    SalesYTD AS [Sales Year To Date]
FROM Sales.SalesTerritory
WHERE TerritoryID = 1;
GO

/*============================================
 Exercise 10
 Display the details of the orders that have 
 a tax amount of more than $10,000.
============================================*/
SELECT *
FROM Sales.SalesOrderHeader
WHERE TaxAmt > 10000;
GO

/*============================================
 Exercise 11
 Display the sales territory details of 
 Canada, France, and Germany.
============================================*/
SELECT *
FROM Sales.SalesTerritory
WHERE Name IN ('Canada', 'France', 'Germany');
GO

/*============================================
 Exercise 12
 Generate a report that contains the IDs of 
 sales persons living in the territory with 
 TerritoryID = 2 or 4.
============================================*/
SELECT 
    SalesPersonID AS [Sales Person ID],
    TerritoryID AS [Territory ID]
FROM Sales.SalesPerson
WHERE TerritoryID IN (2, 4);
GO

/*============================================
 Exercise 13
 Display the details of the Vista credit cards 
 that are expiring in the year 2006.
============================================*/
SELECT *
FROM Sales.CreditCard
WHERE CardType = 'Vista'
  AND ExpYear = 2006;
GO

/*============================================
 Exercise 14
 Display the details of all the orders that 
 were shipped after July 12, 2004.
============================================*/
SELECT *
FROM Sales.SalesOrderHeader
WHERE ShipDate > '2004-07-12';
GO

/*============================================
 Exercise 15
 Display the orders placed on July 01, 2001 
 that have a total cost of more than $10,000 
 in the following format:
 Order Number | Order Date | Status | Total Cost
============================================*/
SELECT 
    SalesOrderID AS [Order Number],
    OrderDate AS [Order Date],
    Status,
    TotalDue AS [Total Cost]
FROM Sales.SalesOrderHeader
WHERE OrderDate = '2001-07-01'
  AND TotalDue > 10000;
GO

-- Use the AdventureWorks database
USE AdventureWorks;
GO

/*============================================
 Exercise 16
 Display the details of the orders that have 
 been placed by customers online.
============================================*/
SELECT *
FROM Sales.SalesOrderHeader
WHERE OnlineOrderFlag = 1;
GO

/*============================================
 Exercise 17
 Display the order ID and total amount due 
 of all the sales orders. Ensure that the order 
 with the highest price is at the top of the list.
============================================*/
SELECT 
    SalesOrderID AS [Order ID],
    TotalDue AS [Total Due]
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC;
GO

/*============================================
 Exercise 18
 Display the order ID and the tax amount for 
 sales orders that are less than $2,000. 
 The data should be displayed in ascending order.
============================================*/
SELECT 
    SalesOrderID AS [Order ID],
    TaxAmt AS [Tax Amount]
FROM Sales.SalesOrderHeader
WHERE TotalDue < 2000
ORDER BY TaxAmt ASC;
GO

/*============================================
 Exercise 19
 Display the order number and the total value 
 of the order in ascending order of the total value.
============================================*/
SELECT 
    SalesOrderNumber AS [Order Number],
    TotalDue AS [Total Value]
FROM Sales.SalesOrderHeader
ORDER BY TotalDue ASC;
GO

/*============================================
 Exercise 20
 Display the details of all currencies that 
 have the word 'Dollar' in their name.
============================================*/
SELECT *
FROM Sales.Currency
WHERE Name LIKE '%Dollar%';
GO

/*============================================
 Exercise 21
 Display all territories whose names begin with 'N'.
============================================*/
SELECT *
FROM Sales.SalesTerritory
WHERE Name LIKE 'N%';
GO

/*============================================
 Exercise 22
 Display the SalesPersonID, TerritoryID, and SalesQuota 
 for salespersons who have been assigned a sales quota.
============================================*/
SELECT 
    SalesPersonID AS [Sales Person ID],
    TerritoryID AS [Territory ID],
    SalesQuota AS [Sales Quota]
FROM Sales.SalesPerson
WHERE SalesQuota IS NOT NULL;
GO

/*============================================
 Exercise 23
 Display the top three salespersons based on the bonus.
============================================*/
SELECT TOP 3 
   SalesPersonID  AS [Sales Person ID],
    Bonus
FROM Sales.SalesPerson
ORDER BY Bonus DESC;
GO

/*============================================
 Exercise 24
 Display the details of those stores that have 
 'Bike' in their name.
============================================*/
SELECT *
FROM Sales.Store
WHERE Name LIKE '%Bike%';
GO

-- Use the AdventureWorks database
USE AdventureWorks;
GO

/*============================================
 Exercise 25
 Display the different types of credit cards 
 used for purchasing products.
============================================*/
SELECT DISTINCT CardType AS [Credit Card Type]
FROM Sales.CreditCard;
GO

/*============================================
 Exercise 26
 Display a report that contains the employee ID, 
 login ID, and title of employees.
 Display records for 10 employees after excluding 
 the first five employees.
============================================*/
SELECT 
    EmployeeID AS [Employee ID],
    LoginID AS [Login ID],
    Title AS [Title]
FROM HumanResources.Employee
ORDER BY [Employee ID]
OFFSET 5 ROWS FETCH NEXT 10 ROWS ONLY;
GO

/*============================================
 Exercise 27
 Display the maximum, minimum, and average rate 
 of sales orders.
============================================*/
SELECT 
    MAX(TotalDue) AS [Maximum Rate],
    MIN(TotalDue) AS [Minimum Rate],
    AVG(TotalDue) AS [Average Rate]
FROM Sales.SalesOrderHeader;
GO

/*============================================
 Exercise 28
 Display the total value of all the orders 
 put together.
============================================*/
SELECT 
    SUM(TotalDue) AS [Total Value of All Orders]
FROM Sales.SalesOrderHeader;
GO

/*============================================
 Exercise 29
 Display the Order ID of the top five orders 
 based on the total amount due in the year 2001.
============================================*/
SELECT TOP 5 
    SalesOrderID AS [Order ID],
    TotalDue
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2001
ORDER BY TotalDue DESC;
GO

/*============================================
 Exercise 30
 What will be the output of the following code?

 SELECT SalesOrderID, ProductID, SUM(LineTotal)
 FROM Sales.SalesOrderDetail
 GROUP BY SalesOrderID

 Explanation:
 - The query groups all rows by each SalesOrderID.
 - SUM(LineTotal) calculates the total value per order.
 - ProductID should not be in SELECT because it's not in GROUP BY or aggregated.
 - Corrected version below:
============================================*/
SELECT 
    SalesOrderID,
    SUM(LineTotal) AS [Total Order Value]
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID;
GO

/*============================================
 Exercise 31
 Display a report containing the ProductID 
 and total cost of products for which the 
 total cost is more than $10,000.
============================================*/
SELECT 
    ProductID,
    SUM(LineTotal) AS [Total Cost]
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) > 10000;
GO

/*============================================
 Exercise 32
 The given query:
 SELECT ProductID, LineTotal AS 'Total' 
 FROM Sales.SalesOrderDetail
 GROUP BY ROLLUP(ProductID)

 Problem:
 - 'LineTotal' cannot be used directly; it must be aggregated (e.g., SUM(LineTotal)).
 Corrected version:
============================================*/
SELECT 
    ProductID,
    SUM(LineTotal) AS [Total]
FROM Sales.SalesOrderDetail
GROUP BY ROLLUP(ProductID);
GO

/*============================================
 Exercise 33
 Display the total amount collected from the orders 
 for each order date.
============================================*/
SELECT 
    OrderDate,
    SUM(TotalDue) AS [Total Amount Collected]
FROM Sales.SalesOrderHeader
GROUP BY OrderDate
ORDER BY OrderDate;
GO

/*============================================
 Exercise 34
 Display the total unit price and total amount 
 collected after selling products 774 and 777. 
 Also, calculate the grand total from both.
============================================*/
SELECT 
    ProductID,
    SUM(UnitPrice) AS [Total Unit Price],
    SUM(LineTotal) AS [Total Amount]
FROM Sales.SalesOrderDetail
WHERE ProductID IN (774, 777)
GROUP BY ProductID
WITH ROLLUP;
GO

-- ✅ Exercise 35: Sales order ID with max/min order line values > $5,000
SELECT 
    SalesOrderID,
    MAX(OrderQty * UnitPrice) AS MaxValue,
    MIN(OrderQty * UnitPrice) AS MinValue
FROM Sales.SalesOrderDetail
WHERE OrderQty * UnitPrice > 5000
GROUP BY SalesOrderID;


-- ✅ Exercise 36: Average value per sales order (line items > $5,000)
SELECT 
    SalesOrderID,
    AVG(OrderQty * UnitPrice) AS [Average Value]
FROM Sales.SalesOrderDetail
WHERE OrderQty * UnitPrice > 5000
GROUP BY SalesOrderID;

-- Exercise 38: Order details with day and weekday
SELECT 
    SalesOrderID AS [Order Number],
    TotalDue AS [Total Due],
    DAY(OrderDate) AS [Day of Order],
    DATENAME(WEEKDAY, OrderDate) AS [Week Day]
FROM Sales.SalesOrderHeader;


-- ✅ Exercise 39: Orders with duplicate UnitPrice values
SELECT 
    SalesOrderID,
    OrderQty,
    UnitPrice
FROM Sales.SalesOrderDetail
WHERE UnitPrice IN (
    SELECT UnitPrice
    FROM Sales.SalesOrderDetail
    GROUP BY UnitPrice
    HAVING COUNT(*) > 1
);


--  Exercise 40: Employee hire month and year
SELECT 
    EmployeeID AS EmployeeID,  -- AdventureWorks uses BusinessEntityID
    FORMAT(HireDate, 'MMMM yyyy') AS HireMonthYear
FROM HumanResources.Employee;


--  Exercise 41: Product locations with CostRate > 12, grouped into 3 and ranked
SELECT 
    *,
    NTILE(3) OVER (ORDER BY CostRate DESC) AS GroupNumber,
    RANK() OVER (ORDER BY CostRate DESC) AS RankByCost
FROM Production.Location
WHERE CostRate > 12
ORDER BY CostRate DESC;

-- ✅ Exercise 42
SELECT 
    'The list price of ''' + Name + ''' is $' + CAST(ListPrice AS VARCHAR(10)) AS [Product Price Statement]
FROM Production.Product
WHERE ListPrice BETWEEN 360.00 AND 499.00;

-- ✅ Exercise 43 (Corrected)
SELECT 
    ProductID,
    SUM(LineTotal) AS Total
FROM Sales.SalesOrderDetail
GROUP BY CUBE(ProductID)
ORDER BY ProductID;

-- ✅ Exercise 44
SELECT 
    SalesPersonID,
    SUM(TotalDue) AS [Sum of Sales Amount]
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL
GROUP BY ROLLUP(SalesPersonID);

-- ✅ Exercise 45
SELECT 
    ProductID,
    CASE 
        WHEN FinishedGoodsFlag = 1 THEN 'Available'
        ELSE 'Not Available'
    END AS [Availability of Product]
FROM Production.Product;

-- ✅ Exercise 46
WITH PriceHistory AS (
    SELECT 
        ProductID,
        YEAR(StartDate) AS PriceYear,
        StandardCost AS Price
    FROM Production.ProductCostHistory
    WHERE ProductID = 715
)
SELECT 
    PriceYear AS [Current Year],
    Price AS [Current Year Price],
    LAG(Price, 1) OVER (ORDER BY PriceYear) AS [Previous Year Price]
FROM PriceHistory
ORDER BY PriceYear;


-- ✅ Exercise 49
CREATE TABLE dbo.StudentDetail (
    Srollno INT,
    Sname VARCHAR(50),
    Class VARCHAR(10)
);

-- Insert sample data
INSERT INTO dbo.StudentDetail VALUES
(1, 'Tom', 'VIII'),
(2, 'Steve', 'IX'),
(3, 'Michel', 'VIII'),
(4, 'Stella', 'IX'),
(5, 'Sherlin', 'VII');

SELECT 
    Sname AS Name,
    Class
FROM dbo.StudentDetail
WHERE Sname LIKE 'S%';

-- ✅ Exercise 51: Matching (for reference / documentation)
-- Function             → Category
-- row_number()         → Ranking function
-- pi()                 → Mathematical function
-- avg()                → Aggregate function
-- count()              → Aggregate function
-- datediff()           → Date function
-- reverse()            → String function
-- ntile()              → Ranking function