/*UC-1

CREATE DATABASE payroll_service;
USE payroll_service;
SHOW DATABASE;
------------
*/

Create Table employeePayroll
(
ID int identity(1,1) primary key,
NAME varchar (100),
SALARY Decimal(10,2),
Date Date
);



