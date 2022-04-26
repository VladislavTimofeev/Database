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