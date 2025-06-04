 create view  most_populated as 
 
 select district , sum(families) , sum(households) ,sum(population) as sump,sum(male),sum(female) from census group by district ORDER BY sump DESC;
