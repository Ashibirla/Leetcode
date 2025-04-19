#MySQL Code 
with
    T as (
        Select
            player_id,
            Datediff(
                Lead(event_date) Over (
                    Partition By player_id
                    Order By event_date
                ),
                event_date
            ) = 1 As st,
            Rank() Over (
                Partition By player_id
                Order By event_date
            ) As rk
        From Activity
    )
Select Round(Count(If(st = 1, player_id, Null)) / Count(Distinct player_id), 2) As fraction
From T
Where rk = 1;
