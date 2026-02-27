create database office;
use office;
create table employee(empid int,name varchar(20),department varchar(20), salary int,age int)
select * from employee
insert  into employee(empid,name,department,salary,age)values ("1", 'Aditi Singh', 'HR', "40000", "28"),("2", 'Raj Mehta', 'IT', "75000", "32"),
(3, 'Sneha Reddy', 'Sales', "55000", "30"),("4", 'Karan Verma', 'IT', "80000", "35"),
(5, 'Priya Nair', 'HR', "45000", "26"),(6, 'Ravi Kumar', 'Sales', 60000, 29),
("7", "Mohit Jain", "IT", "90000", 40),("8","pooja shah","HR","38000","25")
delete from employee where department="sales" and age<30
delete from employee where age>38
select*from employee where department<>"HR" and age<>38
select*from employee where department in("HR","IT","sales") and salary>60000
select*from employee where department in("IT") and salary>70000
select*from employee where department in('HR',"sales")
select*from employee where salary>50000
select*from employee where empid in (2,4,7)
select*from employee where salary <=45000