-- Verify connection to DB using the Actor Table
SELECT first_name
FROM actor;

-- SELECT first_name and last_name
-- FROM actor TABLE
select first_name, last_name
from actor;

-- Query first_name which equals 'Nick'
-- Using the WHERE Clause
select first_name
from actor
WHERE first_name = 'Nick';

-- Query first_name which equals 'Nick'
-- Using LIKE clause
-- NOTE: ( = ) is looking for a literal string
-- while the LIKE Clause allows use for wildcards
select first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';


-- Using LIKE Clause and WILD CARD ( % )
-- Get all J names
SELECT first_name, last_name
from actor
where first_name like 'J%';



-- Single Character Wild Card ( _ )
SELECT first_name, last_name
from actor
where first_name like 'J%';

-- Query for all first_names that start with 'K__%' has two letters, anything goes after
SELECT first_name, last_name
from actor
where first_name like 'K__%';

----- Comparasion Operators:
-- = Equals to
-- > Greater Than
-- < Less Than
-- >= Greater Than or Equal to
-- <= Less Than or Equal to
-- ---------------------- <> Not equals -------------------

-- Using Comparasion Operators with the Payment Table


-- Query WHERE amount GREATER THAN $10.
SELECT amount FROM payment
WHERE amount > 10

-- Query amounts BETWEEN $10-$15
-- NOTE: When using BETWEEN both values are inclusive
select amount from payment 
where amount between 100 and 150; 

-- Order the payments by amount
-- Using the ORDER BY
-- ASC for ascending order (Default)
-- DESC for decending order
select amount from payment
order BY amount desc;

-- Query all payments NOT EQUAL to 2.99
-- * selects all payments in that table  
select * 
from payment
where amount <> 919.67; 

----- Aggregate Functions
-- MIN()
-- MAX()
-- SUM()
-- AVG()
-- COUNT()

-- Query the SUM of amounts GREATER THAN OR EQUAL TO 5.99
SELECT SUM(amount)
from payment
where amount >= 5.99;

-- Query the AVG of amounts GREATER THAN OR EQUAL TO 5.99
SELECT AVG(amount)
from payment
where amount >= 5.99;

-- Query the COUNT of amounts GREATER THAN OR EQUAL TO 5.99
SELECT count(amount)
from payment
where amount >= 5.99;

-- Query to display the count of DISTINCT amounts paid
SELECT COUNT(DISTINCT amount)
from payment
where amount >= 5.99;

-- Query to display the MIN paid using alias
--  alias is the name that you want to display
--  so that comes after the AS keyword 
SELECT MIN(amount) AS min_amount_paid
from payment
where amount >= 5.99;

-- Query to display the MAX paid using alias
SELECT MAX(amount) AS max_amount_paid
from payment
where amount >= 5.99;

-- GROUP BY (Used with aggregate functions)


-- Query the customer that paid the most
-- distint means no multiples 
select DISTINCT customer_id, sum(amount)
from payment;
GROUP BY customer_id
ORDER BY sum(amount) DESC;
limit 5;