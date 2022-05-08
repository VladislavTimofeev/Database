-- Получить информацию о водителях

select u.user_name, u.user_surname, u.user_phone, u.user_email
from users u
inner join user_roles ON u.id = user_roles.user_id where user_roles.role_id = 3

-- Получить информацию Имя водителя, название груза и куда он едет.

select u.user_name, c.cargo_name, r.download_address, r.unloading_address
from transportation_requests t
inner join users u ON t.driver_id = u.id
inner join cargo c ON t.cargo_id = c.id
inner join routes r ON t.route_id = r.id
where c.cargo_name = 'Diesel'


-- Посчитать общее растояние которое проехал водитель Bob 

select sum(route_lenght)
from transportation_requests t
inner join users u ON t.driver_id = u.id
inner join routes r ON t.route_id = r.id
where u.user_name = 'Bob'


-- Посчитать суммарную стоимоть груза которую перевез водитель

select sum(cargo_cost)
from transportation_requests t
inner join users u ON t.driver_id = u.id
inner join cargo c ON t.cargo_id = c.id
where u.user_name = 'Jack'


-- Получить все маршруты водителя Jack отсортировав по стоимости груза

select u.user_name, r.download_address, r.unloading_address, c.cargo_name, c.cargo_cost
from transportation_requests t
inner join users u ON t.driver_id = u.id
inner join routes r ON t.route_id = r.id
inner join cargo c ON t.cargo_id = c.id
where u.user_name = 'Jack'
order by c.cargo_cost desc


-- Получить информацию о грузке который прибывает либо убывает в страну Польша

select c.cargo_name, c.cargo_weight, c.cargo_cost, co.country_name
from cargo c, addresses add
inner join countries co ON add.address_country_id = co.id
where co.country_name = 'Poland'
group by co.country_name, c.cargo_name, c.cargo_weight, c.cargo_cost, co.country_name
Order by c.cargo_weight

-- Получить информацию о грузке который прибывает либо убывает в страну Польша с определенным городом

select c.cargo_name, c.cargo_weight, c.cargo_cost, co.country_name, ci.city_name
from cargo c, addresses add
inner join countries co ON add.address_country_id = co.id
inner join cities ci ON add.address_city_id = ci.id
where co.country_name = 'Poland' AND ci.city_name = 'Wroclaw'
group by co.country_name, c.cargo_name,c.cargo_weight, c.cargo_cost, ci.city_name
Order by c.cargo_weight




