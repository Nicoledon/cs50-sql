
create view frequently_reviewed as 
select listings.id ,property_type,host_name , p.sum from listings join (select listing_id , count(listing_id)  as sum 
from reviews group by listing_id ) as p on listing_id = listings.id order by sum DESC LIMIT 100;
