-- Q1. How many actors are there with the last name ‘Wahlberg’?
select last_name 
from actor 
where last_name = 'Wahlberg';

-- A1. Answer: 2 --

-- Q2. How many payments were made between $3.99 and $5.99?
SELECT * 
FROM payment
WHERE amount 
BETWEEN 3.99 AND 5.99;
 
-- A2. Answer: 2 --

-- Q3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id) 
FROM inventory
GROUP BY film_id
ORDER BY count DESC;

-- A3. Answer: there was many.. and all of them had 8 for the count. 

-- Q4. How many customers have the last name ‘William’?
SELECT last_name 
FROM customer
WHERE last_name = 'William';

-- A4. Answer: 0/None --

-- Q5. What store employee (get the id) sold the most rentals?
SELECT staff_id, Count(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY count DESC;

-- A5. Answer: Staff_id 1 w/ 8040 rented..? --

-- Q6. How many different district names are there?
--- *remember distinct --
SELECT count(DISTINCT district)
FROM address;

-- A6. Answer: 378 --

-- Q7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, count(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;

-- A7. Answer: film_id 508, b/c it has 15 --

-- Q8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--- % wildcard -- 
--- did not need select last_name then count last_name..
SELECT count(last_name)
FROM customer
WHERE store_id =1 AND last_name LIKE '%es';

-- A8. Answer: 13 --

-- Q9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
--- HAVING..? condition > 250
SELECT amount, count(amount)
FROM payment
where customer_id between 380 and 430
GROUP BY amount 
HAVING amount > 250;

-- A9. Answer: none --

-- Q10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT rating, count(rating)
FROM film
GROUP BY rating
ORDER BY count DESC;

-- A.10 Answer: there are 5 ratings. pg-13 has the most total movies --