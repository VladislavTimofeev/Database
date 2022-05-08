
insert into countries (country_name) values 
('Belarus'),
('Latvija'),
('Poland'),
('Luetuva'),
('Cesko'),
('Austria');

insert into cities (city_name, country_id) values 
('Minsk', 1),
('Riga', 2),
('Wroclaw', 3),
('Warszawa', 3),
('Vilnius', 4),
('Praha', 5),
('Wien', 6);

insert into districts (district_name, index_districts, city_id) values
('Lebyazii', 234112, 5),
('Minskii', 220136, 2),
('Kievskii', 352341, 4),
('Borisovskii', 346009, 1),
('Zhodinskii', 457665, 3),
('Nikolaevskii', 552379, 7),
('Zakreskiy', 467902, 6);

insert into streets (street_name, district_id) values
('Pyshkina', 2),
('Lermontova', 1),
('Bunina', 3),
('Timiryazeva', 7),
('Golodeda', 5),
('Uborevicha', 4),
('Mazurova', 6);

insert into buildings (buildings_number, street_id) values
(43,2),
(76,1),
(23,4),
(51,3),
(11,7),
(80,5),
(91,6);

insert into roles (role_name) values 
('logist'),
('dispatcher'),
('driver'),
('owner');

insert into users (user_name, user_surname, user_phone, user_email) values 
('Kate', 'Pushkina', 5896874, 'PKate@gmail.com'),
('Mary', 'Gayts', 3315698, 'MGayts@gmail.com'),
('John', 'Barbossa', 1972931, 'JBarbossa@gmail.com'),
('Bob', 'Marlye', 7758619, 'BMarlye@gmail.com'),
('Jack', 'Sparrow', 1112113, 'JSparrow@gmail.com'),
('Mike', 'Miller', 5576901, 'MMiller@gmail.com');

insert into user_roles (user_id, role_id) values
(1, 4),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 3);

insert into addresses (address_country_id, address_city_id, address_district_id, address_street_id, address_building_id, address_notes) values
(3, 4, 1, 5, 5, ''),
(7, 7, 2, 2, 1, ''),
(1, 1, 3, 4, 7, ''),
(5, 5, 7, 6, 4, ''),
(2, 2, 4, 1, 2, ''),
(6, 6, 6, 7, 6, ''),
(3, 3, 5, 3, 3, 'Important cargo!');

insert into cargo_types (cargo_type) values
('Liquid_cargo'),
('Dangerous_cargo'),
('Perishable_cargo'),
('Consolidated_cargo'),
('Oversized_cargo');

insert into cargo (cargo_name, cargo_weight, cargo_cost, cargo_type_id) values
('Milk Products', 7901, 14000, 3),
('Fish', 4025, 22000, 3),
('Diesel', 5790, 41000, 2),
('Gas', 6600, 19500, 2),
('Oil', 9200, 55000, 2);

insert into routes (download_address, unloading_address, route_lenght) values 
(1,2,660),
(2,3,470),
(5,4,930),
(7,6,880);

insert into transport_types (type) values
('Auto'),
('Plane'),
('Train'),
('Ship');

insert into transports (transport_name, transport_load_capacity, driver_id, transport_type_id) values
('MAN',20000, 4, 1),
('Ford',10000, 5, 1),
('Isuzu',15000, 6, 1);

insert into transportation_requests (driver_id, owner_id, cargo_id, route_id, transport_id) values
(4, 1, 3, 2, 1),
(4, 1, 4, 3, 1),
(4, 1, 5, 1, 1),
(5, 1, 1, 4, 3),
(5, 1, 2, 3, 3),
(5, 1, 4, 2, 3),
(6, 1, 5, 1, 2),
(6, 1, 1, 3, 2);
