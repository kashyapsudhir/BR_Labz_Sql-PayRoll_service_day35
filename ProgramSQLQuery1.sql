/*UC-1

CREATE DATABASE payroll_service;
USE payroll_service;
SHOW DATABASE;
------------

UC-2
*/
/*
CREATE DATABASE payroll_service;
USE payroll_service;

Create Table employeePayroll
(
ID int identity(1,1) primary key,
NAME varchar (100),
SALARY Decimal(10,2),
Date Date
);
*/




--UC-3
/*
INSERT INTO  employeePayroll
(NAME,SALARY,Date)
Values
('Ram', '10000.50', '2023-05-15'),
('Shyam', '15000.00', '2023-01-20'),
('Mohan', '13000.21', '2023-03-12'),
('Ramesh', '17000.34', '2022-07-07'),
('Ramesh', '17000.01', '2022-11-01');
*/


--UC-4
select * from employeePayroll;

--UC-5
/*
SELECT salary FROM employeePayroll
where name = 'Ram';

SELECT salary FROM employeePayroll
WHERE start BETWEEN CAST('2020-01-01'
AS DATE) AND DATE(NOW());




--UC-6
ALTER TABLE employeePayroll ADD GENDER CHAR(1);
UPDATE employeePayroll SET GENDER='M' WHERE NAME='Ram'
UPDATE employeePayroll SET GENDER='M' WHERE NAME='Shyam'
UPDATE employeePayroll SET GENDER='M' WHERE NAME='Mohan'
UPDATE employeePayroll SET GENDER='M' WHERE NAME='Ramesh'
UPDATE employeePayroll SET GENDER='M' WHERE NAME='Ramesh'
SELECT * FROM employeePayroll;
*/
/*
SELECT SUM(SALARY) FROM employeePayroll
WHERE GENDER = 'M' GROUP BY GENDER;

SELECT AVG(SALARY) FROM employeePayroll
WHERE GENDER = 'M' GROUP BY GENDER;

SELECT Count(SALARY) FROM employeePayroll
WHERE GENDER = 'M' GROUP BY GENDER;

SELECT MIN(SALARY) FROM employeePayroll
WHERE GENDER = 'M' GROUP BY GENDER;

SELECT MAX(SALARY) FROM employeePayroll
WHERE GENDER = 'M' GROUP BY GENDER;

*/

--UC8

/*
Alter table employeePayroll add 
Employee_Phone varchar(15),
Address varchar(50) default 'india';


Alter table employeePayroll add Department varchar(50) ;

UPDATE employeePayroll SET Department='Social Science' WHERE Name='Ram'
UPDATE employeePayroll SET Department='Science' WHERE NAME='Shyam'
UPDATE employeePayroll SET Department='Math' WHERE NAME='Mohan'
UPDATE employeePayroll SET Department='English' WHERE NAME='Ramesh'
UPDATE employeePayroll SET Department='Hindi' WHERE NAME='Ramesh'
SELECT * FROM employeePayroll;


UPDATE employeePayroll SET Address='india' WHERE Gender='M';


--UC-9

alter table employeePayroll add
 BasicPay decimal(10,2),
 Deductions decimal(10,2), 
 TaxablePay decimal(10,2),
 IncomeTax decimal(10,2), 
 NetPay decimal(10,2);
 SELECT * FROM employeePayroll;

 

 Insert into employeePayroll values('Rinki',17000,'2022-09-11','F',876567890,'Lucknow','Hindi',232,232,123,122,1000),
 ('Sonu',5834,'2022-04-16','M',923128809,'Kanpur','Playing',22,32,13,122,12984),
 ('Priya',10834,'2021-04-16','F',996528809,'Patna','Science',23,32,83,102,11184),
 ('Soni',15834,'2020-04-16','F',921234809,'Banglore','Drawing',33,40,56,190,12094);
 SELECT * FROM employeePayroll;
 

 --UC11
 create Table EmployeeDepartment
 (Id int primary key IDENTITY(1,1),
 EmployeeId int ,
 DepartmentId int,FOREIGN KEY (DepartmentId) REFERENCES employeePayroll(Id))

 Select * from EmployeeDepartment;
select * from employeePayroll inner join  EmployeeDepartment on employeePayroll.ID=EmployeeDepartment.DepartmentId;
*/


--UC-12
select * from employeePayroll inner join  EmployeeDepartment on employeePayroll.ID=EmployeeDepartment.DepartmentId where NAME='Sonu'


select * from employeePayroll inner join  EmployeeDepartment on employeePayroll.ID=EmployeeDepartment.DepartmentId WHERE StartDate BETWEEN CAST('2018-01-01'
AS DATE) AND cast(GETDATE()as date);