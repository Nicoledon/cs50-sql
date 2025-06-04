.import --csv meteorites.csv temp
UPDATE "temp" 
SET "name" = NULL 
where name = '';
UPDATE "temp" 
SET "year" = NULL 
where year = '';
UPDATE "temp" 
SET "discovery" = NULL 
where discovery = '';
UPDATE "temp" 
SET "class" = NULL 
where class = '';
UPDATE "temp" 
SET "lat" = NULL 
where lat = '';
UPDATE "temp" 
SET "long" = NULL 
where long = '';
UPDATE "temp" 
SET "mass" = NULL 
where mass = '';
create table meteorites(
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       name varchar(8),
       class varchar(8),
       mass float,
       discovery varchar(8),
       year int,
       lat float,
       long float
);
INSERT INTO "meteorites"(name,class,mass,discovery,year,lat,long)
SELECT "name","class",round("mass",2),"discovery","year",round("lat",2),round("long",2) from "temp" where nametype !="Relict" order by year ,name;



