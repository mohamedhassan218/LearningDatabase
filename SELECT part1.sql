SELECT tblEmplowee2.fName, tblEmplowee2.salary
FROM tblEmplowee , tblEmplowee2 -- Without using the alias names with tables-- 
WHERE tblEmplowee2.fName = tblEmplowee.fName; -- using join two tables with the WHERE statement-- 

SELECT E1.fName
FROM tblEmplowee as E1 
where E1.SSN like '%55__' and (E1.salry between 5000 and 6000) -- using the like, between and order by keywords-- 
order by E1.fName desc; -- descending order--

SELECT E2.fName, E2.salary
FROM tblEmplowee as E1, tblEmplowee2 as E2-- using the alias names with tables -- 
WHERE E2.fName = E1.fName;   -- using join two tables with the WHERE statement-- 
