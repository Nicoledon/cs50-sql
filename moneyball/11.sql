WITH chart1 AS
(
SELECT first_name ,last_name from players
join
(SELECT player_id from (select * from salaries where year = 2001)  GROUP by player_id) as sala
on sala.player_id = players.id
join
(SELECT player_id from (select * from performances where year = 2001)  GROUP BY player_id ) hit
on hit.player_id = players.id  where "dollar per hit" is not NULL order by "dollar per hit" ,first_name ,last_name  LIMIT 10
),
chart2 as (
SELECT first_name ,last_name from players
join
(SELECT player_id from (select * from salaries where year = 2001)  GROUP by player_id) as sala
on sala.player_id = players.id
join
(SELECT player_id  from (select * from performances where year = 2001)  GROUP BY player_id ) hit
on hit.player_id = players.id  where "dollar per hit" is not NULL order by "dollar per hit" ,first_name ,last_name  LIMIT 10
)
select * from (select * from chart1 INTERSECT select * from chart2);

