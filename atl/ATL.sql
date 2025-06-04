create table user(
       First_name VARCHAR(8),
       Last_name VARCHAR(8),
       username VARCHAR(8),
       passwords VARCHAR(8),
       PRIMARY KEY(username),      
);
create table schools(
       name VARCHAR(8),
       type VARCHAR(8),
       location VARCHAR(8),
       PRIMARY KEY(name)
);
create table company(
       name VARCHAR(8),
       industry VARCHAR(8),
       location VARCHAR(8),
       PRIMARY KEY (name)
);
CREATE table user_schools(
        username VARCHAR(8),
        school_name VARCHAR(8),
        start_day TIMESTAMP,
        end_day TIMESTAMP,
        degree VARCHAR(8),
        PRIMARY KEY (username),
        FOREIGN KEY (username) REFERENCES user(username)        
);

CREATE table user_company(
        username VARCHAR(8),
        company_name VARCHAR(8),
        start_day TIMESTAMP,
        end_day TIMESTAMP,
        title VARCHAR(8),
        PRIMARY KEY (username),
        FOREIGN KEY (username) REFERENCES user(username)        
);

