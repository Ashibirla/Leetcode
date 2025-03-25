#MSSQL Code
WITH CTE AS (
    SELECT id,email,
           ROW_NUMBER() OVER ( partition by email ORDER BY id) AS RowNum
    FROM person
)
DELETE FROM CTE WHERE RowNum > 1;
