use northwind;
select orderID from orders;
select orders.OrderID, customers.CustomerName, orders.OrderDate from orders
inner join customers on orders.CustomerID=customers.CustomerID;
select * from orders;
select * from customers;
select * from shippers;
select orders.OrderID, customers.CustomerName, shippers.ShipperID from 
orders inner join customers on orders.CustomerID=customers.CustomerID
inner join shippers on orders.ShipperID=shippers.ShipperID;
-- Left Join
select customers.CustomerName, orders.OrderID from customers
left join orders on customers.CustomerID=orders.CustomerID
order by customers.CustomerName;
-- Right Join
select orders.OrderID, employees.LastName, employees.FirstName from orders
right join employees on orders.EmployeeID=employees.EmployeeID
order by orders.OrderID;
-- Cross Join
select customers.CustomerName, orders.OrderID from customers
cross join orders; 
