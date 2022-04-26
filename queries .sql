select * from users;

select * from roles;

select * from countries;

select users.name, users.surname, users.age, countries.country_name
from users
inner join countries ON users.country_id = countries.id where countries.country_name = 'Poland';

select users.name, users.surname, users.age, products.productname
from users
join products ON products.id = users.product_id;

select products.productname, brand.name
from products
join brand ON products.brand_id = brand.id where name = 'Sumsung'