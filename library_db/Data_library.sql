
insert into roles (name) values
(manager),
(student),
(author);

insert into users (name, surname, age, role_id) values
('Kate', 'Volkova', 23, 2),
('Mary', 'Petrova', 33, 1),
('Max', 'Adison', 29, 1),
('Rick', 'Jordan', 18, 2),
('Jack', 'Sparrow', 45, 3),
('Elizabet', 'Warnew', 39, 3);

insert into user_roles (role_id, user_id) values 
(1,1),
(2,2),
(2,3),
(2,4),
(3,5),
(3,6);

insert into genres (name) values
('Detective'),
('Fantasy'),
('Horrow');

insert into books (name, year_of_publishing, book_genres_id) values
('Murderer', 1998, 1),
('Pilot', 1999, 3),
('Space',2005, 2),
('AIM', 2000, 1);


insert into book_authors (book_id, author_id) values
(1,5),
(2,6),
(3,5),
(4,6);

insert into book_accountings (user_id, book_id) values 
(1,3),
(2,2),
(3,4),
(4,1);

