# MSSQL Code
SELECT MAX(Salary) as SecondHighestSalary
FROM
(
  SELECT Salary, DENSE_RANK() OVER(ORDER BY Salary DESC) AS Rank
  FROM Employee
) E
WHERE (Rank = 2);
