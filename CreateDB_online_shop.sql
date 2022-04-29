create database online_store_db;

use online_store_db;

create table roles
(
	id serial primary key,
	role_name character varying(30)
);

create table countries
(
	id serial primary key,
	country_name character varying(30)
);

create table users
(
	id serial primary key,
	name character varying(20),
	surname character varying(20),
	age smallint,
	country_id integer references countries(id),
	role_id integer references roles(id)
	
);

create table brands
(
	id serial primary key,
	brand_name character varying(30)
);

create table products
(
    id SERIAL primary key,
    productName VARCHAR(30) not null ,
    price NUMERIC,
    brand_id integer references brands(id)
    
);

create table buckets(
	id serial primary key, 
	user_id integer references users(id)
);

create table bucket_items(
	id serial primary key,
    bucket_id integer references buckets(id),
	product_id integer references products(id),
    
);

