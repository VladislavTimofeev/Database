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

insert into products  (productName, price, brand_id)
values
('iPhone X', 71000, 1),
('iPhone 8', 56000, 1),
('Galaxy S9', 56000, 2),
('Galaxy S8 Plus', 46000, 2),
('Desire 12', 26000, 3),
('Galaxy A50', 2500, 2);

insert into brands(name)
values
('Apple'),
('Sumsung'),
('HTC'),
('Nokia');

