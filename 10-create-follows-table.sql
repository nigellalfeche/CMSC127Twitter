-- Create a table named "follows" with the following columns:
--     id           (integer)       primary key, auto increment
--     following    (string)        the email of the person being followed,
--                                  should be a foreign key to the "users" table
--     follower     (string)        the email of the person that follows,
--                                  should be a foreign key to the "users" table
--     created_at   (timestamp)     default to current timestamp
--
-- Write your query below:


CREATE TABLE IF NOT EXISTS follows (
	id SERIAL PRIMARY KEY,
	following varchar (50) NOT NULL,
	FOREIGN KEY (following) REFERENCES users (email),
	follower varchar (40) NOT NULL, 
	FOREIGN KEY (follower) REFERENCES users (email),
	created_at timestamp DEFAULT now()
);