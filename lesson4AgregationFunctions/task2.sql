drop table if exists users;
create table users(
	id serial primary key auto_increment,
    birthday_at date comment 'Дата рождения',
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    name varchar(255) comment 'Имя покупателя'
) comment = 'Покупатели';
insert into users(id, name, birthday_at) values (null, 'Petr', '1970-01-01');
insert into users(id, name, birthday_at) values (null, 'Niko', '1980-07-05');
insert into users(id, name, birthday_at) values (null, 'Kosty', '1990-09-11');
select DAYOFWEEK(birthday_at) as day, dayname(birthday_at) as dayname from users group by dayname having dayname != 'Thursday';