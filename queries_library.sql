-- Показать книги, которые есть у пользователя
select u.name, u.surname, books.name, books.year_of_publishing, books.book_genres_id
from users u
inner join books ON u.id = books.user_id

-- Показать автора и какие книги он написал
select u.name, u.surname, book_authors.user_id
from users u
inner join book_authors ON book_authors.user_id = u.id

-- Показать книги у которых жанр детектив
select b.name, b.year_of_publishing, genres.name
from books b
inner join genres 
ON genres.id = b.book_genres_id
where genres.id = 1

-- Показать пользователя, книгу и насколько он ее взял
select u.name, u.surname, book_accountings.book_id, book_accountings.time_book_accountings_days
from users u
inner join book_accountings 
ON book_accountings.book_id = u.id