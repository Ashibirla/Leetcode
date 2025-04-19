#MSSQL Code 
Select class
From courses 
Group by class 
Having count(student)>=5;
