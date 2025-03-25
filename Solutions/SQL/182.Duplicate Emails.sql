#MSSQL Code
With cte as (
SELECT email,count(1) as counts
From Person 
Group By email 
Having count(1)>1) 

Select email 
from cte 
