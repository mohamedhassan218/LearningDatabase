USE Chapter4;
				-- Add some data:

--INSERT INTO Staff(Id, StaffName, BDate, Dnumber, StaffOffice)
--VALUES
--(16, 'Ali Alaa', '2002-12-2', 1, 5),
--(9, 'Essam El-Shawaly', '1990-1-24', 2, 6),
--(8, 'Fares Awad', '2000-2-12', 3, 8),
--(5, 'Hossam Metwally', '2013-6-30', 4, 11);


--SELECT E.Fname, E.Lname, E.Dnumber
--FROM Employee AS E
--WHERE E.Dnumber IN (
--	SELECT D.Dnumber
--	FROM Department AS D
--	WHERE E.Dnumber = D.Dnumber
--);

			-- 5.1.3 Correlated Nested Query:
--SELECT E.Fname, E.Lname
--FROM EMPLOYEE AS E, Department AS D
--WHERE E.Dnumber = D.Dnumber;

			-- 5.1.4 EXISTS:
--SELECT E.Fname, E.Dnumber 
--FROM Employee AS E
--WHERE EXISTS(
--	SELECT E.Fname, D.Dnumber 
--	FROM Employee AS E, Department AS D
--	WHERE D.Dnumber = 3
--);

	-- Note: this query join the result because of you specified two tables in the FROM clause.
--SELECT E.Fname, E.Lname, E.Dnumber, S.StaffName
--FROM Employee AS E, Staff AS S
--WHERE EXISTS (
--	SELECT E.Fname, E.Lname, D.Dnumber
--	FROM Employee AS E, Department AS D
--	WHERE E.Dnumber = 4
--) AND EXISTS (
--	SELECT S.StaffName
--	FROM Staff AS S
--	WHERE S.Dnumber = 4
--);

				-- Explict Sets and Renaming:
--SELECT Fname
--FROM Employee
--WHERE Id IN (1, 2, 3, 4);

--SELECT Fname AS 'First Name', Lname AS 'Last Name', Id AS 'Employee ID'
--FROM Employee;
