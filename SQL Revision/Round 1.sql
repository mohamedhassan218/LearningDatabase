			-- Create and drop database.
-- CREATE DATABASE TEMPDATA;
-- DROP DATABASE TEMPDATA;
--//////////////////////////////////////////////////////////////////////////////////////--
--CREATE DATABASE Chapter4;
			-- Use a specific database.
USE Chapter4;
			-- Create new table.
/*CREATE TABLE Employee(
	Id INT
);*/
			-- Drop a table.
--DROP TABLE Employee;
--//////////////////////////////////////////////////////////////////////////////////////--
			-- Create two tables with one-to-many relation.
			-- Each employee has only one department.
--CREATE TABLE Department(
--	Dnumber INT NOT NULL,
--	Dname VARCHAR(20),
--	PRIMARY KEY (Dnumber),
--	UNIQUE (Dname)
--);

--CREATE TABLE Employee(
-- 	Id INT NOT NULL,
--	Fname VARCHAR(15) NOT NULL,
--	Lname VARCHAR(15),
--	Dnumber INT NOT NULL,
--	BDate DATE NOT NULL,
--	Salary DECIMAL(10,2) NOT NULL,
--	EmpAddress VARCHAR(90),
--	PRIMARY KEY(Id),
--	FOREIGN KEY(Dnumber) REFERENCES Department(Dnumber)
--);


			-- Using the constraints.
--CREATE TABLE Staff(
--	Id INT NOT NULL,
--	StaffName VARCHAR(50) NOT NULL DEFAULT 'Staff Name',
--	BDate DATE NOT NULL,
--	Dnumber INT,
--	StaffOffice VARCHAR(4),
--	UNIQUE (StaffOffice),
--	CONSTRAINT STAFFPK
--		PRIMARY KEY(Id),
--	CONSTRAINT STAFFDEPFK
--		FOREIGN KEY(Dnumber) REFERENCES Department(Dnumber) ON DELETE SET NULL ON UPDATE CASCADE,
--	CONSTRAINT CHK_Dnumber 
--		CHECK(Dnumber > 0)
--);
--//////////////////////////////////////////////////////////////////////////////////////--
				-- Data Retrieval
			-- SELECT <attribute list> 
			-- FROM   <table list>
			-- WHERE  <condition>
			
			-- This query called select-project-join query:
			--		we say join because of the AND in the where clause. 
--SELECT StaffName, Staff.Dnumber, Dname 
--FROM Staff, Department
--WHERE Department.Dnumber = Staff.Dnumber AND Staff.StaffOffice = 4;

			-- Using the alias.
--SELECT E.Fname, E.Lname
--FROM Employee AS E;

			-- Retrieve distinct values.
--SELECT DISTINCT Dnumber
--FROM Department;

			-- Merge queries together.
			-- UNION, EXCEPT and INTERSECT
--SELECT DISTINCT Dnumber
--FROM Department
--WHERE Dname = 'CS'
--UNION
--SELECT DISTINCT Dnumber
--FROM Employee
--WHERE Salary = 1900.00;

			-- Pattern matching.
--SELECT Fname
--FROM Employee
--WHERE EmpAddress LIKE '%Cairo&';			-- Get all employees whose addresses contain 'Cairo'.

			-- Using BETWEEN.
--SELECT *
--FROM Employee 
--WHERE Salary BETWEEN 1900 AND 3000;

			-- Using ORDER BY.
--SELECT *
--FROM Staff
--WHERE Staff.Dnumber IS NOT NULL
--ORDER BY Staff.Id, Staff.Dnumber, Staff.StaffOffice;

--//////////////////////////////////////////////////////////////////////////////////////--
			-- Insert data.
--INSERT INTO Department (Dnumber, Dname)
--VALUES
--(1, 'Computer Science'),
--(2, 'Information Techno'),
--(3, 'Information System'),
--(4, 'Multi-Media');

--INSERT INTO Employee (Id, Fname, Lname, Dnumber, Salary, EmpAddress, BDate)
--VALUES
--(1, 'Mohamed', 'Hassan', 1, 3000, 'FCI, Assuit University', '2002-08-21'),
--(2, 'Ahmed', 'Sayed Zizo', 3, 70000, 'Zamalek, Egypt', '1989-11-27'),
--(3, 'Mostafa', 'Motaz', 2, 12000, 'El-Helaly Streat, Assiut', '2000-12-12');

			-- Delete row.
--DELETE FROM Department
--WHERE Dname = 'Multi-Media';

			-- Update existed row.
--UPDATE Employee 
--SET Salary = Salary * 1.3
--WHERE Employee.Id = 2; 