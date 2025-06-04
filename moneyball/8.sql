SELECT salary from salaries where player_id = (select player_id from performances where year = 2001  order by "HR" DESC LIMIT 1)  and year = 2001;
