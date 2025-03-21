#MSSQL Code
SELECT e.name as Employee
FROM Employee e 
JOIN employee m on e.managerid = m.id 
WHERE e.salary > m.salary
