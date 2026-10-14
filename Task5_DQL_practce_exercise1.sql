-- DQL Practices task 1

CREATE TABLE Employee( EmployeeID INT, EmployeeName VARCHAR(50),
Department VARCHAR(50), Salary INT, City VARCHAR(50));
INSERT INTO Employee VALUES (101,'Rishi','IT',60000,'Chennai'),
(102,'Priya','HR',50000,'Bangalore'), 
(103,'Rahul','IT',70000,'Chennai'), 
(104,'Anu','Finance',55000,'Hyderabad'),
(105,'John','IT',70000,'Chennai');

select * from dbo.Employee;

-- Practice Questions 

--1. display all employees
select * from dbo.Employee;

--2 Display EmployeeName and Salary.
select employeename, salary from dbo.Employee;

--3 Show employees from Chennai.
select * from dbo.employee where city = 'chennai';

--4 Salary > 55000.
select * from dbo.Employee where salary > 55000;

--5 Employees in IT.
select * from dbo.employee where department = 'IT';

--6 Sort Salary ASC.
select * from dbo.Employee order by salary;

--7 Sort Salary DESC.
select * from dbo.employee order by salary desc;

--8. Unique Departments.
select distinct department from dbo.Employee;

--9.  Unique Cities.
select distinct city from dbo.Employee;

--10. . Top 3 highest-paid employees.
select top 3 * from dbo.Employee order by salary desc;
