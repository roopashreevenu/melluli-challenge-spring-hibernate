create table user
(
    id      int unsigned not null primary key auto_increment,
    name    varchar(100) not null,
    gender  varchar(10)  not null,
    city    varchar(100),
    country varchar(100)
);

insert into user (name, gender, city, country)
values ('Vikram Rao', 'Male', 'Bengaluru', 'India');
insert into user (name, gender, city, country)
values ('Kiran Kumar', 'Male', 'Gangavati', 'India');
insert into user (name, gender, city, country)
values ('Vishwanath Rao', 'Male', 'Mysuru', 'India');
insert into user (name, gender, city, country)
values ('Kavya B V', 'Female', 'Chitradurga', 'India');
insert into user (name, gender, city, country)
values ('Avagath', 'Male', 'Boston', 'United States');
