-- *** The Lost Letter ***
SELECT id FROM addresses WHERE address = '900 Somerville Avenue';
-- Find the from address id
SELECT contents FROM  packages WHERE  from_address_id = 432;
--find the to address id
SELECT id FROM packages WHERE contents ='Congratulatory letter' AND from_address_id = 432 AND to_address_id =854;
-- find package id 
SELECT address_id,action,timestamp FROM scans WHERE package_id =384
--find where is it end up with
-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***
SELECT id FROM addresses WHERE address = "109 Tileston Street"
SELECT id FROM addresses WHERE address = "728 Maple Place";
SELECT id FROM packages WHERE from_address_id =9873 AND  to_address_id =4983;
SELECT driver_id ,action,timestamp FROM scans WHERE package_id = (SELECT id FROM packages WHERE from_address_id =9873 AND  to_address_id =4983);