create database emp_info
use emp_info
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Department VARCHAR(20),
    city VARCHAR(20),
    Salary INT
);
    
insert into employees(emp_id,First_Name,Last_Name,Department,city,salary)
values(1,'shubh','Patel','IT','ahmedabad',20000)

insert into employees(emp_id,First_Name,Last_Name,Department,city,salary)
values(2,'Pragya','Patel','Computer','Mahesana',18000)

insert into employees(emp_id,First_Name,Last_Name,Department,city,salary)
values(3,'Mira','Shah','Marketing','kolkata',22000)

insert into employees(emp_id,First_Name,Last_Name,Department,city,salary)
values(4,'krina','Jain','HR','kalol',16000)

insert into employees(emp_id,First_Name,Last_Name,Department,city,salary)
values(5,'Divy','yadav','Production','gandhinagar',17000)

insert into employees(emp_id,First_Name,Last_Name,Department,city,salary)
values(6,'Rishabh','Sharma','Finance','surat',21000)

insert into employees(emp_id,First_Name,Last_Name,Department,city,salary)
values(7,'Adhya','joshi','Sales','vadodara',15000)

insert into employees(emp_id,First_Name,Last_Name,Department,city,salary)
values(8,'Jay','dave','Research','',17000)

select * from employees

select emp_id,salary from employees


