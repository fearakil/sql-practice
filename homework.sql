--Homework SQL Day 1

--1. How many actors are there with the last name ‘Wahlberg’? 
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99? 
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--3. What film does the store have the most of? (search in inventory)
SELECT * 
FROM inventory;

SELECT store_id, COUNT(film_id)
FROM inventory
WHERE store_id = store_id
GROUP BY store_id
ORDER BY COUNT (film_id) DESC;
 

--4. How many customers have the last name ‘William’? 
SELECT last_name
FROM customer
WHERE last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
SELECT * 
FROM rental;

SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY staff_id;

--6. How many different district names are there? 
SELECT *
FROM address;

SELECT district, COUNT(district)
FROM address
GROUP BY district
ORDER BY district;

--7. What film has the most actors in it? (use film_actor table and get film_id) 
SELECT *
FROM film_actor;

SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY film_id;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
SELECT *
FROM customer;

SELECT last_name,store_id
FROM customer
WHERE (store_id = '1') AND (last_name LIKE'__%es');

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for 
--    customers  with ids between 380 and 430? (use group by and having > 250) 
SELECT * 
FROM payment;

-- SELECT amount,rental_id, customer_id
-- FROM payment
-- WHERE customer_id >=380 AND <=430
-- GROUP BY rental_id 
-- HAVING rental_id > 250;

--10. Within the film table, how many rating categories are there? And what rating has 
--    the most movies total?
SELECT *
FROM film;

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating DESC;




