/*UC-1

CREATE DATABASE payroll_service;
USE payroll_service;
SHOW DATABASE;
------------

UC-2
*/
CREATE DATABASE payroll_service;
USE payroll_service;

Create Table employeePayroll
(
ID int identity(1,1) primary key,
NAME varchar (100),
SALARY Decimal(10,2),
Date Date
);





--UC-3

INSERT INTO  employeePayroll
(NAME,SALARY,Date)
Values
('Ram', '10000.50', '2023-05-15'),
('Shyam', '15000.00', '2023-01-20'),
('Mohan', '13000.21', '2023-03-12'),
('Ramesh', '17000.34', '2022-07-07'),
('Ramesh', '17000.01', '2022-11-01');



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




