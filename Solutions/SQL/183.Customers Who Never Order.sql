#MSSQL Code
Select name as Customers
From customers c 
Left Join orders o on c.id = o.customerid
Where customerid is null
