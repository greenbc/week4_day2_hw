CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	rating VARCHAR(20)
);

CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	name_ VARCHAR(100),
	price NUMERIC(10, 2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	theater_no INTEGER,
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);