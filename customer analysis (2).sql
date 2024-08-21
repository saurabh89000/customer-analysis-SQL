 -- ANALYSIS(2)
 
 -- Q1-Fetch data from customer table where either the customer's pincode is among 
 -- (12345,54321,98765) or the customer's country is the USA. 
 
 select *
 from customer
 where pin_code in (12345,54321,98765) or
 country='USA';
 
 -- Q2-Fetch customer_id,customer_name and their email for customers who live in either the USA or canada.
 
 select customer_id, customer_name, email_id, country
 from customer
 where country in ('USA'or'Canada');

 -- Q3-Replace country name from UKto United kingdom in customer table.
 
update customer
set country='united kingdom'
where country='UK';
SELECT*FROM customer;

 -- Q4-Remove all customers who live in either the Spain or Germany.
 
 select *
 from customer
 where country not in ('Spain' , 'Germany');
 
 -- OR
 delete from customer
 where country in ('Spain' ,'Germany');
 select*from customer;
 
 -- Q5-Get all customers who lives at pincode 12345 in India.
 
 select *
 from customer
 where pin_code = '12345' and
 country='India';
 
 -- Q6-Get all customer whose last name is "Adams".
 
 select * from customer
 where customer_name like '%Adams';
 
 -- Q7-Delete all the customer whose last name is "Adams".
 
 
  SET SQL_SAFE_UPDATES=0;
 delete from customer
 where customer_name like '%Adams';
 select*from customer;
 
 -- Q8-Fetch all customer who is the street of 'Oak' 
 select*from customer
 where address like '%Oak%';
 
 -- Q9-Fetch all the distnict countries from customer table.
 
 select distinct (country)from customer;
 
 -- Q10-Get all customer who lives in pincode 23456.
 
 select*from customer
 where pin_code='23456';
