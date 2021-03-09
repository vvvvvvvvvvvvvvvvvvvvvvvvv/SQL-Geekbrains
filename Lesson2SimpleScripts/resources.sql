drop table if exists photos;
create table photos (
	id serial primary key,
    name varchar(255),
    src varchar(255),
    saved_data datetime default current_timestamp, 
    memory double
);
drop table if exists audiophotos;
create table audio (
	id serial primary key,
    name varchar(255),
    src varchar(255),
    saved_data datetime default current_timestamp, 
    memory double
);
create table video (
	id serial primary key,
    name varchar(255),
    src varchar(255),
    saved_data datetime default current_timestamp, 
    memory double
);

