#MSSQL Code
SELECT w1.Id
FROM Weather w1
JOIN Weather w2 
ON w1.RecordDate = DATEADD(DAY, 1, w2.RecordDate)
WHERE w1.Temperature > w2.Temperature;
