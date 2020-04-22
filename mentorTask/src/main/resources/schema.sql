drop table if exists user;
create table user(
	user_id int(3) primary key,
	user_name varchar(20) not null,
	password varchar(8) not null
);