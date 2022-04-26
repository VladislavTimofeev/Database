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

insert into countries (country_name)
values 
('Belarus'),
('Poland'),
('Ukraine'),
('George');

insert into roles (role_name)
values 
('Manager'),
('Customer');

insert into users (name, surname, age, country_id, role_id)
values 
('Kate', 'Petrova', 19, 1, 2),
('Max', 'Kyrochkin', 27, 2, 1),
('Dima', 'Urchenko', 24, 3, 2),
('Vasya', 'Cheburashko', 33, 4, 2);