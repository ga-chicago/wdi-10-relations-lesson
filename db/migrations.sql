DROP DATABASE IF EXISTS restaurant;

CREATE DATABASE restaurant;

\c restaurant

CREATE TABLE waiters(
	id SERIAL PRIMARY KEY,
	name VARCHAR(128)
);

CREATE TABLE menuitems(
	id SERIAL PRIMARY KEY,
	name VARCHAR(128)
);

CREATE TABLE itemorders(
	id SERIAL PRIMARY KEY,
	menuitem_id INT REFERENCES menuitems(id),
	waiter_id INT REFERENCES waiters(id),
	--ticket_id INT REFERENCES ticket(id),
	notes VARCHAR(128),
	open BOOLEAN
);