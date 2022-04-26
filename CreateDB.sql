create database online_store_db

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
	foreign key (role_id) references roles(id)
	foreign key (country_id) references countries(id)
);

create table countries
(
	id serial primary key,
	country_name character varying(30)
);

create table products
(
    id SERIAL primary key,
    productName VARCHAR(30) not null ,
    productCount INTEGER default 0,
    price NUMERIC,
    brand_id integer,
    foreign key (brand_id) references brand(id)

);

create table brands
(
	id serial primary key,
	brand_name character varying(30)
);