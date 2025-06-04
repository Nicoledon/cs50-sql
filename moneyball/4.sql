select first_name,last_name,salary from salaries join players on salaries.player_id = players.id order by salary ASC,first_name ASC , last_name ASC,player_id ASC where salaries.year = 2001 LIMIT 50;
