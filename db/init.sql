create table user
(
    id      int unsigned not null primary key auto_increment,
    name    varchar(100) not null,
    gender  varchar(10)  not null,
    city    varchar(100),
    country varchar(100),
    age     int unsigned
);

insert into user (name, gender, city, country, age)
values ('Vikram Rao', 'Male', 'Bengaluru', 'India', 30);
insert into user (name, gender, city, country, age)
values ('Kiran Kumar', 'Male', 'Gangavati', 'India', 26);
insert into user (name, gender, city, country, age)
values ('Vishwanath Rao', 'Male', 'Mysuru', 'India', 31);
insert into user (name, gender, city, country, age)
values ('Kavya B V', 'Female', 'Chitradurga', 'India', 25);
insert into user (name, gender, city, country, age)
values ('Avagath', 'Male', 'Boston', 'United States', 28);
