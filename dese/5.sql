select city,count(id) from (select * from schools where type LIKE '%Public%') group by city having count(id) <=3 order by count(id) desc , city; 

