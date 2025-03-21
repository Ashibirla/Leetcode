# MSSQL Code
CREATE FUNCTION getNthHighestSalary (@N INT)  
RETURNS INT  
AS  
BEGIN  
  DECLARE @result INT;  

  SELECT @result = salary
  FROM (  
      SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) as r  
      FROM employee  
  ) result  
  WHERE r = @N;  

  RETURN @result;  
END;
