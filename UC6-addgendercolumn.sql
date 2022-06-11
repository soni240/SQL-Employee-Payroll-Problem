--UC-3 Insert values in Table

insert into employee_payroll(id,name,salary,start_date) values
(1,'Rakesh',20000.0,'2021-03-12'),
(2,'John',25000.0,'2021-04-18'),
(3,'Ankita',10000.0,'2020-05-13'),
(4,'Tanvi',30000.0,'2020-08-19');
select * from empoyee_payroll;

--UC4 Retrieve all data

select * from employee_payroll


---- UC 5: Select Query using Cast() an GetDate()

select salary from empoyee_payroll where name='Tanvi';
select salary from empoyee_payroll where startDate BETWEEN Cast('2020-12-20' as Date) and GetDate();

------- UC 6: Add Gender Column and Update Table Values -------
alter table employee_payroll add gender char(1)

Update employee_payroll set gender='R'
where name='Rakesh';
Update employee_payroll 
set gender='F'
where name='Ankita' or name='Tanvi'
