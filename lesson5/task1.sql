#drop table if exists users;
/*create table users(
	id serial primary key auto_increment,
    birthday_at date comment 'Дата рождения',
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    name varchar(255) comment 'Имя покупателя'
) comment = 'Покупатели';*/
/*insert into users(id, name, birthday_at) values (null, 'Petr', '1970-01-01');
insert into users(id, name, birthday_at) values (null, 'Niko', '1980-07-05');
insert into users(id, name, birthday_at) values (null, 'Kosty', '1990-09-11');*/
drop table if exists orders;
create table orders(
	id serial primary key auto_increment,
    order_id int unsigned,
    product_id int unsigned,
	created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    total int unsigned default 1 comment 'Количество заказанных товарных озиций',
    userid  bigint unsigned default null,
    foreign key (userid) references users (id)
   ) comment = 'Состав заказа';
   
   insert into orders values(null, 1, 2,sysdate(), now(), null, 1);
   insert into orders values(null, 1, 2,sysdate(), now(), null, 2);
   insert into orders values(null, 1, 2,sysdate(), now(), null, 2);
   
   select distinct users.name, orders.userid from users, orders where users.id = orders.userid ;