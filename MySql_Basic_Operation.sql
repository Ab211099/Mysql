use Myserver;

create table Employee(
empId varchar(30),
empName varchar(30),
age int,
address varchar(30),
salary int
);
insert into Employee(empId, empName, age, address, salary)
values(1,"Abhishek",18,"Pune",15000),
(2,"Shree",28,"Mumbai",7000),
(3,"Omkar",39,"karnataka",8000),
(4,"Shiv",49,"tamilnadu",16000);

select max(salary) from Employee;

-- Inner Query:
-- 2ND Highest salary:
select max(salary)
from Employee
			where salary < (select max(salary) from Employee);
            
-- 3RD Highest salary
select max(salary) from Employee where salary < 
(select max(salary) from Employee where salary <
(select max(salary) from Employee));

-- Limit 
select * from Employee
limit 2;

-- Description of schema
desc Employee;

-- or operator
select *  from Employee
where empID = 1 or empID = 4;

-- between operator
select *  from Employee
where empID between 1 and 3;

-- order by descending
select *  from Employee
order by empID desc;

-- Order by ascending
select *  from Employee
order by empID asc;

-- aggregate function
select count(empID)
from person;
    
select max(empID)
from person;

select min(empID)
from person;

select avg(empID)
from Employee;




            


