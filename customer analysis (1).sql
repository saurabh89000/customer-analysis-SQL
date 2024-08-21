-- ANALYSIS-

-- Q1- Fetch all the data from customer table.

select*from customer;

-- Q2-Fetch data from customer table where customer ids are 40,50,60.

select*from customer where customer_id in (40,50,60);

-- Q3-Fetch all data from customer table where customer name must have combination of "ar".

select*from customer where customer_name like '%ar%';

-- Q4-Add new column "city" to the customer table.

alter table customer
add column city varchar(50);

-- Q5-Change table name from customer to USER.

alter table customer
rename to USER;

-- Q6-Change column name from customer_name to user_name.

alter table USER
change column customer_name user_name varchar(50);

-- Q7-Change any column constraint in customer table.

alter table USER
rename to customer;

select*from customer;

alter table customer
modify city int;

-- Q8-Drop city column from customer table.

alter table customer
drop column city;

-- Q9-Drop customer table.

drop table customer;

-- Q10-Create table user with user_id,user_name,email,phone_number,city.

create table user(
    user_id int primary key, 
    user_name varchar(300),
    email varchar(300),
    phone_number varchar(50),
    city varchar(100)
);
select*from user;

-- Q11- Insert at least 5 entries in user table.

insert into  user
(user_id,user_name,email,phone_number,city)
VALUES
(1,'saurabh','abc@gmail.com',123456789,'varansi'),
(2,'raj', 'def@gamail.com', 2345678908,'mumbai'),
(3,'ansh','sew@gmail.com', 2683757389,'goa'),
(4,'rohit','aqw@gmail.com', 339654236,'kolkata'),
(5,'aman','der@gmail.com', 5372829836,'banglore');

select *from user;

-- Q12-Change any column constraint in customer table.

select*from customer;
alter table customer
modify customer_id int;

-- Q13-Fetch all data from customer table where customer id lies between 20 to 40.

select*from customer
where customer_id between 20 and 40;

-- Q14-Fetch all data from customer table where customer id is greater than 85.

select*from customer
where customer_id >85;