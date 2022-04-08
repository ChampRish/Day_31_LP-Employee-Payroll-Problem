/*UC1 to create a payroll service database*/
create database Payroll_service

use Payroll_service

/* UC2 create a employee payroll table in the payroll service database*/
create table Employee_payroll(
Id int identity(1,1) primary key,
Name varchar(20),
Salary varchar(10),
StartDate varchar(20)
)

/* UC3 create employee payroll data */
insert into employee_payroll(Name, Salary, StartDate) values ('Rishabh','40000','26/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Rahul','50000','25/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Satish','60000','27/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Riya','35000','26/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Priya','25000','26/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Bhanu','35000','26/08/2021')
insert into employee_payroll(Name, Salary, StartDate) values ('Chotu','25000','27/08/2021')

/* UC4 retrieve all the employee payroll data */
select * from employee_payroll

/*UC5 retrieve salary data on a condition */
SELECT Salary,Name FROM employee_payroll WHERE Name = 'Bill'
Select Salary,Name from employee_payroll where StartDate between ('25/08/2021') and ('26/08/2021')

/* UC6 add Gender to Employee Payroll Table and Update the Rows */
ALTER TABLE employee_payroll ADD Gender varchar(6);
UPDATE employee_payroll set Gender = 'M' where  Name='Rishabh' or Name = 'Bhanu' or Name='Chotu' or Name='Rahul' or Name='Satish'
UPDATE employee_payroll set Gender = 'F' where  Name='Riya' or Name = 'Priya'
'

/* UC7 use of Database functions with GroupBy */
Alter Table employee_payroll
Alter Column Salary float

Select SUM(Salary) From employee_payroll Where Gender='M' Group by Gender
Select SUM(Salary) From employee_payroll Where Gender='F' Group by Gender

Select AVG(Salary) From employee_payroll Where Gender='M' Group by Gender
Select AVG(Salary) From employee_payroll Where Gender='F' Group by Gender

Select MIN(Salary) From employee_payroll Where Gender='M' Group by Gender
Select MIN(Salary) From employee_payroll Where Gender='F' Group by Gender

Select MAX(Salary) From employee_payroll Where Gender='M' Group by Gender
Select MAX(Salary) From employee_payroll Where Gender='F' Group by Gender

Select COUNT(Salary) From employee_payroll Where Gender='M' Group by Gender
Select COUNT(Salary) From employee_payroll Where Gender='F' Group by Gender

/* UC8 extend employee_payroll data and save more details */
ALTER TABLE employee_payroll ADD Phone varchar(16), Address varchar(32) DEFAULT 'Empty' WITH VALUES, Department varchar(16) NOT NULL DEFAULT 'Developer';
select * from employee_payroll
