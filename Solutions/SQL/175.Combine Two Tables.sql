# MSSQL Code 
Select firstname,lastname,city,state
From Person P
Left Join Address A on P.personid = A.personid 
