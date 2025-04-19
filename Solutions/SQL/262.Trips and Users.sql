# MSSQL Code 
Select distinct request_at as Day, 
coalesce(round(1.0 * sum(CASE WHEN Status != 'completed' THEN 1 ELSE 0 END) / COUNT(*), 2), 0) AS "Cancellation Rate"
From Trips t 
Join Users u on t.client_id = u.users_id and u.banned = 'No' 
Join Users u1 on t.driver_id = u1.users_id and u1.banned = 'No' 
Where request_at between '2013-10-01' and '2013-10-03' 
Group By request_at
