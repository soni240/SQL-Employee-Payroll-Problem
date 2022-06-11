--UC-1 creating database
create database EmployeeServices;


--UC-2 creating Table
create table employee_payroll
(
id int identity,
name varchar(35), 
salary money,
start_date date
)