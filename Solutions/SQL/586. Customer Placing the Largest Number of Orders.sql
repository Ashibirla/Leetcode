#MSSQL Code 
Select top 1 customer_number
From Orders 
Group by customer_number
Order by count(order_number) desc;
