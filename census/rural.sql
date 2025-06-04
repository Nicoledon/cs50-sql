create view rural
AS
SELECT * from census where locality LIKE '%rural%';
