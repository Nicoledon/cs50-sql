SELECT name ,avg_fee FROM 
(SELECT team_id,ROUND(AVG(salary),2) as avg_fee from (SELECT * from salaries where year = 2001)group by team_id order by avg_fee LIMIT 5) AS fee join teams ON
teams.id = fee.team_id;
