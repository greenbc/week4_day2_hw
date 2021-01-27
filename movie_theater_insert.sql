INSERT INTO customer(
	customer_id,
	first_name,
	last_name
) VALUES (
	1,
	'Ben',
	'Green'
);

INSERT INTO movies(
	movie_id,
	title,
	rating
) VALUES (
	1,
	'Avatar',
	'PG-13'
);

INSERT INTO concessions(
	concession_id,
	name_,
	price,
	customer_id
) VALUES(
	1,
	'Skittles',
	4.99,
	1
);

INSERT INTO tickets(
	ticket_id,
	theater_no,
	customer_id,
	movie_id
) VALUES (
	1,
	1,
	1,
	1
);

SELECT * 
FROM customer;