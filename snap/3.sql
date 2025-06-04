SELECT to_user_id from messages where from_user_id 
= (SELECT id from users where username LIKE '%creativewisdom377%') 
group by to_user_id order by count(to_user_id) DESC LIMIT 3;