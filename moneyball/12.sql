SELECT p1.first_name ,p1.last_name, "dollar per hit" from 
(SELECT first_name , last_name , (salary / H) as 'dollar per hit' from players 
join performances on performances.player_id = players.id
join salaries on salaries.player_id = players.id
where salaries.year =2001 and performances.year = 2001 and "dollar per hit" is not NULL  order by "dollar per hit" ASC LIMIT 10
INTERSECT
SELECT first_name , last_name , (salary / RBI) as 'dollar per hit' from players 
join performances on performances.player_id = players.id
join salaries on salaries.player_id = players.id
where salaries.year =2001 and performances.year = 2001 and "dollar per hit" is not NULL  order by "dollar per hit" ASC LIMIT 10
) as p;




with chart1 as (
SELECT  first_name ,last_name, "dollar per hit" from 
(SELECT first_name , last_name , (salary / H) as 'dollar per hit' from players 
join performances on performances.player_id = players.id
join salaries on salaries.player_id = players.id
where salaries.year =2001 and performances.year = 2001 and "dollar per hit" is not NULL  order by "dollar per hit" ASC LIMIT 10
))
with chart2 as (
SELECT  first_name ,last_name  from 
(SELECT first_name , last_name , (salary / RBI) as 'dollar per hit' from players 
join performances on performances.player_id = players.id
join salaries on salaries.player_id = players.id
where salaries.year =2001 and performances.year = 2001 and "dollar per hit" is not NULL  order by "dollar per hit" ASC LIMIT 10
)),
SELECT * from chart2 ;