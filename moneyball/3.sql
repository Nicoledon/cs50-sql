SELECT year,HR from performances 
WHERE player_id = (SELECT id from players where first_name LIKE '%Ken%' and last_name LIKE '%Griffey%' and birth_year = 1969) 
order by year DESC ;