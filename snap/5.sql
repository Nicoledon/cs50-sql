SELECT friend_id from friends where id  = (SELECT user_id from users where username LIKE '%lovelytrust487%') 
INTERSECT
SELECT friend_id from friends where user_id  = 
(SELECT id from users where username LIKE '%exceptionalinspiration482%'); 

