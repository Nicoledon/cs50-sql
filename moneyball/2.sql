SELECT year,salary from salaries 
WHERE player_id = (SELECT id from players where first_name LIKE '%Cal%' and last_name LIKE '%Ripken%') 
order by year DESC ;