DROP DATABASE IF EXISTS adlister_db;

CREATE DATABASE IF NOT EXISTS adlister_db;

use adlister_db;


        CREATE TABLE users (
                    id INT unsigned not null AUTO_INCREMENT,
                    username varchar(100),
                    email VARCHAR(100) not null ,
                    passwords varchar(50) not null,
                    primary key (id)

        );

        CREATE TABLE ads (
                     id INT unsigned not null AUTO_INCREMENT,
                     user_id int unsigned,
                     title VARCHAR(255) not null ,
                     description varchar(500),
                     foreign key (user_id) references users(id),
                     primary key (id)

            );