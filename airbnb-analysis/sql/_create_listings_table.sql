/*
CREATE TABLE listings (
	id INT,
	name VARCHAR(200),
	host_id INT,
	host_name VARCHAR(100),
	neighbourhood_group VARCHAR(100),
	neighbourhood VARCHAR(100),
	latitude FLOAT,
	longitude FLOAT,
	room_type VARCHAR(100),
	price INT,
	minimum_nights INT,
	number_of_reviews INT,
	last_review DATE,
	reviews_per_month FLOAT,
	calculated_host_listings_count INT,
	availability_365 INT
);
*/


-- Analysis queries below:

SELECT neighbourhood_group, ROUND(AVG(price),2) AS avg_price FROM listings GROUP BY neighbourhood_group ORDER BY avg_price DESC;