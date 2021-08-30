SELECT ProductName , Max(Price)
FROM [Products];

SELECT  Max(ProductId)
FROM [Products];

SELECT round(SUM(Price)/Max(ProductId))
FROM [Products];

SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName 
FROM Orders 
left join Shippers on Orders.ShipperID =Shippers.ShipperID 
left join Customers on  Customers.CustomerID= Orders.CustomerID ;

SELECT Customers.CustomerName,Orders.OrderID
FROM Customers
left join Orders on  Customers.CustomerID= Orders.CustomerID 
ORDER BY CustomerName ASC;

SELECT Orders.OrderID, Employees.LastName,Employees.FirstName
FROM Orders
left join Employees on  Orders.EmployeeID=Employees.EmployeeID
ORDER BY OrderId ASC;

SELECT Count(CustomerID), Country 
FROM Customers 
GROUP BY  Country;

SELECT Count(CustomerID), Country 
FROM Customers 
GROUP BY  Country
ORDER BY Count(CustomerID) DESC;

SELECT Shippers.ShipperName,COUNT(Orders.ShipperID)
FROM Orders
left join  Shippers on shippers.shipperID = Orders.ShipperID
group by ShipperName;

