USE Chapter4;
				-- Add more data.
--INSERT INTO Department (Dnumber, Dname)
--VALUES
--(4, 'Multi-Media');

--INSERT INTO Employee (Id, Fname, Lname, Dnumber, Salary, EmpAddress, BDate)
--VALUES
--(4, 'Mahmoud', 'Alaa', 3, 3000, 'FCI', '2002-08-21'),
--(5, 'Mostafa', 'Sayed', 4, 70000, 'El-Nemes Streat, Assiut', '2020-11-27'),
--(6, 'Ali', 'Hossam', 4, 12000, 'El-Helaly Streat, Assiut', '2000-12-25');


				-- 5.1 More complex SQL Retrieval Queries.
		-- 5.1.1 NULL and UNKNOWN:
--SELECT Dname
--FROM Department
--WHERE Dnumber IS NOT NULL;
	
		-- 5.1.2 Nested Queries and set/multiset comparisions:
--SELECT Fname, Lname, EmpAddress
--FROM Employee
--WHERE Fname IN(
--		SELECT Fname
--		FROM Employee
--		WHERE Dnumber = 3)
--		OR Fname IN(
--			SELECT Fname
--			FROM Employee
--			WHERE Dnumber = 1);

--SELECT E.Id, E.Fname, E.Lname, E.Salary
--FROM Employee AS E
--WHERE Salary > ALL (
--	SELECT Salary
--	FROM Employee AS E
--	WHERE E.Id = 1);