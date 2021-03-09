drop table if exists catalogs;
create table catalogs (
	id  serial primary key,
    name varchar(255) null comment 'Название раздела'  
) comment = 'Разделы интернет-магазина';

insert into catalogs values (null, null);
update catalogs c set c.name = 'empty' where c.name is null limit 100;
select * from catalogs;
drop table if exists users;
create table users(
	id serial primary key,
    birthday_at date comment 'Дата рождения',
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    name varchar(255) comment 'Имя покупателя'
) comment = 'Покупатели';
insert into users(id, name, birthday_at) values (1, 'hello', '1970-01-01');


drop table if exists products;
create table products(
	id serial primary key,
    name varchar(255) comment 'Имя покупателя',
    description text comment 'Описание',
    price decimal (11,2) comment 'цена',
	created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    catalog_id int unsigned
    ) comment = 'Товарные позиции';
drop table if exists orders;
create table orders(
	id serial primary key,
    user_id int unsigned
   ) comment = 'Заказы';
   
drop table if exists orders;
create table orders(
	id serial primary key,
    order_id int unsigned,
    product_id int unsigned,
	created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    total int unsigned default 1 comment 'Количество заказанных товарных позиций'
   ) comment = 'Состав заказа';
drop table if exists discounts;
create table discounts(
	id serial primary key,
    user_id int unsigned,
    product_id int unsigned,
    discount float unsigned comment 'Велечина скидки от 0.0 до 1.0'
   ) comment = 'Скидки';   

drop table if exists storehouses;
create table storehouses(
	id serial primary key,
    name varchar(255) comment 'Название'
   ) comment = 'Склады';      
   
drop table if exists storehouses_products;
create table storehouses_products(
	id serial primary key,
    storehouse_id int unsigned,
    product_id int unsigned,
    value int unsigned comment 'Запас товарной позиции на складе'
   ) comment = 'Запасы на складе';         
   
        
    






