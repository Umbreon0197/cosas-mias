use northwind;
select * from customers;
select concat(address, ' | ', City, ' | ', PostalCode, ' | ', Country) as DireccionCompleta from customers;
select left(Birthdate, 10), right(Birthdate, 8) as Hora from employees;