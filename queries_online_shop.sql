select * from users;

select * from roles;

select * from countries;

select users.name, users.surname, users.age, countries.country_name
from users
inner join countries ON users.country_id = countries.id where countries.country_name = 'Poland';

select users.name, users.surname, users.age, products.productname
from users
join products ON products.id = users.product_id;

select products.productname, brand.brand_name
from products
join brand ON products.brand_id = brand.id where name = 'Sumsung'


-- Запрос на ФИО юзера которому принадлежит корзина и количенство товаров к ней  (+дополнительно информацию об этих товарах)

select u.name, u.surname, COUNT (bi.id)
from users u
inner join buckets b 
ON b.user_id = u.id 
inner join bucket_items bi
ON bi.bucket_id = b.id where u.id = 13 GROUP BY u.id

-- информация об этих товарах

select u.name, u.surname, pr.productName, pr.price
from users u
inner join buckets b 
ON b.user_id = u.id 
inner join bucket_items bi
ON bi.bucket_id = b.id 
inner join products pr
ON pr.id = bi.product_id where u.id = 13 