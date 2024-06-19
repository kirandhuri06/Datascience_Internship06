create database database1;
use database1;
create table Employee(
empid int,
empname varchar(34),
emp_age int,
emp_addr varchar(256)
);
alter table Employee
add column emp_gender boolean;
insert into Employee values (1002,"Shreya",23,"mumbai","M");
alter table Employee
modify column emp_gender varchar(12);
create table Emp_backup as 
select * from Employee
create table EmpDetails(
id int,
name varchar(23));
insert into EmpDetails values(12,'gyandas');
select * from EmpDetails;
insert into Employee values(1008,'shudhansh',23,'mumbai','male');
alter table Employee
drop column emp_gender;
insert into Employee values(1008,'shudhansh',23,'mumbai');
alter table Employee
add column emp_salary int;
insert into Employee values(1008,'shudhansh',20,'bandra',3400);
insert into Employee values(1006,'shudhansh',23,'mumbai',4500);
insert into Employee values(1004,'shudhansh',24,'delhi',5500);
insert into Employee values(1003,'shudhansh',22,'mumbai',4510);
insert into Employee values(1007,'shudhansh',24,'mumbai',3490);
select * from Employee;
select count (empid)
from Employee;
select max(emp_salary)
from Employee;
select * from Employee where emp_salary between 3000 and 4000 and emp_age between 20 and 25;
select * from Employee 
select * from Employee where emp_age in(20,23);
select * from Employee where emp_age>22 and emp_addr ='bandra'; 
select * from Employee where emp_age>22 or emp_addr ='bandra'; 
select empname,emp_addr,emp_age  from Employee where not emp_addr='mumbai'; 
select empname,emp_addr,emp_age  from Employee where  emp_addr<>'mumbai';
select empname,emp_salary from Employee order by emp_salary desc;
select empname,emp_salary from Employee order by emp_salary asc;
select empid,empname from Employee group by emp_addr;
select emp_addr,count(empname) from Employee group by emp_addr;
select emp_age,count(empname) from Employee group by emp_age;
select emp_age,count(empname) as count from Employee group by emp_age;
select * from Employee having emp_age=24;
select empname,sum(emp_salary) as total from Employee 
group by empname 
having sum(emp_salary)>=67000
order by emp_salary desc;
create table Emp_detail(
emp_id int,
emp_name varchar(34),
gender varchar(23),
department varchar(256),
education varchar(256),
month_of_joining varchar(256),
salary int
);
insert into Emp_detail values (1001,'Ajay','m','Engineering','doctoral','january',25);
insert into Emp_detail values (1002,'bablu','m','Engineering','UG','february',23);
insert into Emp_detail values (1003,'chhavi','f','hr','PG','march',15);
insert into Emp_detail values (1004,'Dheeraj','m','hr','UG','january',12);
insert into Emp_detail values (1005,'Evina','f','marketing','UG','march',16);
insert into Emp_detail values (1006,'Fredy','m','Sales','UG','december',10);
insert into Emp_detail values (1007,'garima','f','Sales','UG','march',10);
insert into Emp_detail values (1008,'Hans','m','Admin','PG','november',8);
insert into Emp_detail values (1009,'Ivanka','f','Admin','intermediate','April',7);
insert into Emp_detail values (1010,'Jai','m','peon','10th std','December',4);
select * from Emp_detail
select emp_id,emp_name ,department 
from Emp_detail
where education != 'UG'
group by education having sum(salary)>=20;
select emp_name,department,sum(salary) as total
FROM Emp_detail 
group by department 
having total>=15
order by salary desc; 


