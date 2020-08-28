use insects;

set foreign_key_checks=0;


create table reptiles (
	id INT primary key AUTO_INCREMENT, 
	age BIGINT NOT NULL check (age >= 0 and age <= 50), 
	name VARCHAR(255) NOT NULL UNIQUE, 
	food VARCHAR(255), 
	home VARCHAR(255), 
	careInfo VARCHAR(255)
) engine=InnoDB;

create user 'rloman' identified with mysql_native_password by 'test123';
grant all privileges on insects.* to 'rloman';
flush privileges;

set foreign_key_checks=1;

