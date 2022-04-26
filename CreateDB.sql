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
);

create table countries
(
	id serial primary key,
	country_name character varying(30)
);