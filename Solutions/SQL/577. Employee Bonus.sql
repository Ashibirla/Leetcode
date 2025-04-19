#MySQL Code 
Select e.name , bonus
From Employee e 
Left Join Bonus b on b.empid = e.empid
Where bonus < 1000 or bonus is null 
