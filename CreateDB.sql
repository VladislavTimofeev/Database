CREATE DATABASE online_store_db

create table roles
(
	id serial primary key,
	role_name character varying(30)
);

create table users
(
	id serial primary key,
	name character varying(20),
	surname character varying(20),
	age smallint,
	country_id integer,
	role_id integer,
	FOREIGN KEY (role_id) REFERENCES roles(id)
	FOREIGN KEY (country_id) REFERENCES countries(id)
);

create table countries
(
	id serial primary key,
	country_name character varying(30)
);

CREATE TABLE Products
(
    id SERIAL PRIMARY KEY,
    productName VARCHAR(30) NOT NULL,
    productCount INTEGER DEFAULT 0,
    price NUMERIC
    brand_id integer
    FOREIGN KEY (brand_id) REFERENCES brand(id)

);

create table brand
(
	id serial primary key,
	name character varying(30)
);