-- Lab 3.01 SQL Subqueries
-- Activity 1
-- Drop column picture from staff.
USE sakila;

ALTER TABLE sakila.staff
DROP COLUMN picture;

SELECT * FROM sakila.staff;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

/*select * from sakila.customer
where first_name = ('TAMMY')
and last_name = ('SANDERS');

SELECT * FROM sakila.staff;*/

INSERT INTO sakila.staff(staff_id, first_name, last_name, address_id, email, store_id, active, username, last_update) 
VALUES
(3,'Tammy','Sanders',4,'Tammy.Sanders@sakilastaff.com',2,1,'Tammy','2006-02-15 03:57:16');

SELECT * FROM sakila.staff;

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for 
-- the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you 
-- would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id 
-- information as well. To get that you can use the following query:

/*select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
Use similar method to get inventory_id, film_id, and staff_id

select * from sakila.rental;
select * from sakila.film;

SELECT f.title, i.inventory_id, r.rental_id FROM sakila.film AS f
JOIN sakila.inventory AS i
ON f.film_id = i.film_id
JOIN sakila.rental AS r
ON i.inventory_id = r.inventory_id
WHERE f.title = 'Academy Dinosaur';


select * from sakila.staff;

select * from sakila.rental;*/

INSERT INTO sakila.rental(rental_date, inventory_id, customer_id, staff_id)
VALUES
('2022-10-17 19:10:10','8','130','1');

SELECT * FROM sakila.rental
WHERE customer_id = ('130');

/*Activity 2
Use dbdiagram.io or draw.io to propose a new structure for the Sakila database.
Define primary keys and foreign keys for the new database.*/