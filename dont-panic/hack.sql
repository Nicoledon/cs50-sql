UPDATE "users" 
SET "password" = (
    "982c0381c279d139fd221fce974916e7"
)
WHERE "username" = (
       "admin" 
);
DELETE FROM "user_logs"
WHERE id < 52 ;
UPDATE "user_logs"
SET "new_password" = (
     SELECT password from users where username LIKE '%emily33%'
)
WHERE "new_username" = (
       "admin"
);



