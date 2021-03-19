/*drop table if exists catalogs;
create table catalogs (
	id  serial primary key,
    name varchar(255) null comment 'Название раздела'  
) comment = 'Разделы интернет-магазина';
insert into catalogs values(null, "books");
insert into catalogs values(null, "computers");
insert into catalogs values(null, "phones");*/

drop table if exists products;
create table products(
	id serial primary key,
    name varchar(255) comment 'Имя покупателя',
    description text comment 'Описание',
    price decimal (11,2) comment 'цена',
	created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    catalog_id bigint unsigned default null,
    foreign key (catalog_id) references catalogs (id)
    ) comment = 'Товарные позиции';
insert into products values(null, "wolr war", "Book about world war", 100, default, default, 1);
insert into products values(null, "Leon", "Leon", 100, default, default, 1);
insert into products values(null, "Mak pro", "Mak pro", 10, default, default, 2);
insert into products values(null, "IPhone", "11", 50, default, default, 3);
insert into products values(null, "IPhone", "11", 50, default, default, 3);
select * from products left join catalogs on products.catalog_id = catalogs.id;
    