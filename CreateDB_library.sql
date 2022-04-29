create database library;


create table roles (
	id serial primary key,
	name character varying(20)
);

create table users (
	id serial primary key,
	name character varying(20),
	surname character varying(20),
	age integer
);

create table user_roles(
     id serial primary key,
     role_id integer references roles(id),
     user_id integer references users(id)
);

create table genres (
	id serial primary key,
	name character varying(20)
);

create table books (
	id serial primary key,
	name character varying(20),
	year_of_publishing integer,
	book_genres_id integer references genres(id),
);

create table book_authors(
     id serial primary key,
     book_id integer references books(id),
     user_id integer references users(id)
);


create table book_accountings (
	id serial primary key,
	user_id integer references users(id),
	book_id integer references books(id),
	time_book_accountings_days integer
);