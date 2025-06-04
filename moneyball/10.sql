SELECT first_name ,last_name , IIF (sumH >0 ,(sumS / sumH) ,NULL) as "dollar per hit" from players  join 

(SELECT player_id ,SUM(salary) as sumS from (select * from salaries where year = 2001)  GROUP by player_id) as sala
on sala.player_id = players.id
join
(SELECT player_id , SUM(H) as sumH  from performances  GROUP BY player_id ) hit
on hit.player_id = players.id order by "dollar per hit" LIMIT 10;