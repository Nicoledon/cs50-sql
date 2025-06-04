create view june_vacancies as
SELECT id ,property_type , host_name , count(date) as days_vacant from available  where date > '2023-06-00' and date < '2023-06-31' GROUP by id ,property_type ,host_name;
