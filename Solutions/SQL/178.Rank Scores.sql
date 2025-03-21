# MSSQL Code
SELECT score,dense_rank () over (order by score desc) rank
FROM Scores;
