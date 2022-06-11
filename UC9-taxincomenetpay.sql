---- UC 9: Rename Salary to Basic Pay and Add Deduction,Taxable pay, Income Pay , Netpay 

EXEC sp_RENAME 'EmpoyeePayroll.Basic Pay' , 'BasicPay', 'COLUMN'
Alter table employee_payroll
add Deduction float,TaxablePay float, IncomeTax float,NetPay float;
Update EmployeePayroll 
set Deduction=1000
where Gender='F';
Update EmployeePayroll 
set Deduction=2000
where Gender='M';
update EmployeePayroll
set NetPay=(BasicPay - Deduction)
update EmployeePayroll
set TaxablePay=0,IncomeTax=0
select * from EmpoyeePayroll;
